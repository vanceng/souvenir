class UsersController < ApplicationController
 
  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to memories_path
    else
      render :new
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    respond_with @user 
  end

  def show
    @user = User.find(params[:id])
    render "show"
  end

  protected

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :website, :twitter, :facebook, :biography, :profile_photo, :image)
  end
end
