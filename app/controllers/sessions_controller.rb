class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by email: params[:email]
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(id: user.id)
    else
      flash.now[:notice] = "Username and/or Password does not match."
      render root_path
    end
  end

  def delete
    session.delete :user_id
    redirect_to root_path, notice: "Signed out."
  end


end
