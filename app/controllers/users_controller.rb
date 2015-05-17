class UsersController < ApplicationController
 
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new 
  end

  def edit

  end

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
  end

  def destroy
  end

  protected

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :website, :twitter, :facebook, :biography, :profile_photo)
  end
end
