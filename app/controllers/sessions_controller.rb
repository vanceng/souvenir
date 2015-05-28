class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Welcome back, #{user.first_name}!"
      redirect_to root_path
    elsif user.nil
      flash[:error] = "Login failed, but failures are a measure of success in life so try again. Unless you're a hacker, stop now!"
      redirect_to root_path       
    else
      flash[:error] = "Login failed, but failures are a measure of success in life so try again. Unless you're a hacker, stop now!"
      redirect_to root_path 
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Bye!"
    redirect_to root_path
    # redirect_to root_path, notice: "Adios!"
  end
end
