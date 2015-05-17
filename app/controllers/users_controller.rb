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
    @user = User.create(user_params)

    # if @user.save
    #   redirect_to users_show_path, notice: "Welcome aboard, #{@user.first_name}!"
    # else
    #   render :new
    # end
  end

  def update
  end

  def destroy
  end

  protected

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :website, :twitter, :facebook, :biography, :profile_photo, :image)
  end
end
