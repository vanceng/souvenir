class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path, notice: "Welcome back, #{user.first_name}!"
    else
      flash.now[:alert] = "Log in failed..."
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Adios!"
  end
end
