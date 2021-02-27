class ContactController < ApplicationController

  def index
    @contacts = Contact.all()
  end

  def create
    @contact = Contact.new(
      fname: params[:fname],
      lname: params[:lname],
      email: params[:email],
      phone: params[:phone],
      street_address: params[:street_address],
      city: params[:city],
      state: params[:state],
      )
    if @contact.save
      print("success")
    else
      print("failed")
    end
    redirect_to controller: "index"
  end

end
