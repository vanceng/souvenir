 module API
  class SessionsController < ApplicationController

    respond_to :json

    def new
    end

    def create
      user = User.find_by(email: params[:email])

      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        # redirect_to memories_path, notice: "Welcome back, #{user.first_name}!"
        respond_with @users
      else
        flash.now[:alert] = "Log in failed..."
        render :new
      end
    end

    def destroy
      session[:user_id] = nil
      redirect_to memories_path, notice: "Adios!"
    end

  end
end