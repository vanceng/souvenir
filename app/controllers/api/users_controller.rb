module API
  class UsersController < ApplicationController
  respond_to :json

    def show
      @user = User.find(params[:id])
      respond_with @user 
    end

    def update
      @user = User.find(params[:id])
      @user.update_attributes(user_params)
      respond_with @user 
    end

    protected

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :website, :twitter, :facebook, :biography, :profile_photo, :image)
    end
  end

end