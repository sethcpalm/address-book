class ContactsController < ApplicationController

  def index
    @contacts = Contact.where(user_id: current_user.id).order('lname, fname')
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
    render :form
  end

  def edit
    if params[:id]
      @contact = Contact.find(params[:id])
    end
    render :form
  end

  def create
    @contact = Contact.new(
      fname: params[:contact][:fname],
      lname: params[:contact][:lname],
      email: params[:contact][:email],
      phone: params[:contact][:phone],
      street_address: params[:contact][:street_address],
      city: params[:contact][:city],
      state: params[:contact][:state],
      user_id: current_user.id,
      )
    if @contact.save
      redirect_to contacts_path
    else
      render :form
    end
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update(
        fname: params[:contact][:fname],
        lname: params[:contact][:lname],
        email: params[:contact][:email],
        phone: params[:contact][:phone],
        street_address: params[:contact][:street_address],
        city: params[:contact][:city],
        state: params[:contact][:state],
      )
      redirect_to contacts_path
    else
      render :form
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to contacts_path
  end

end
