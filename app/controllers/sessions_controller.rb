class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:new, :create, :welcome]

  def new
    if logged_in?
      redirect_to contacts_path
    end
    @user = User.new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to contacts_path
    else
      @error = 'Incorrect username/password'
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    current_user = nil
    redirect_to '/'
  end

end
