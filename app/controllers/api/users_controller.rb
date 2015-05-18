module API
  class UsersController < ApplicationController
  respond_to :json

    def index
      @memories = User.all
      respond_with @memories
    end

    def show
      @user = User.find(params[:id])
      respond_with @user 
    end

    def new
      @user = User.new
      respond_with @user 
    end

    def edit
      @user = User.find(params[:id])
      respond_with @user 
    end

    def create
      @user = User.create(user_params)
      respond_with @user 
      # need to also respond with a failure message or 'false'
    end

    def update
      @user = User.find(params[:id])
      @user.update_attributes(movie_params)
      respond_with @user 
    end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
      respond_with @user 
    end

    protected

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :website, :twitter, :facebook, :biography, :profile_photo, :image)
    end
  end

end