class UsersController < ApplicationController
  def show
     @user=User.find_by(id: session[:user_id])
  end

  def new
  	@user=User.new
  end

  def create
  	 @user = User.new(user_params)

    if @user.save

    	  flash[:success] = "Welcome!"
          redirect_to login_path
    else
      render 'new'
    end
  end

  def user_params
      params.require(:user).permit(:first_name, :last_name,:image, :email, :password,:developer_id)
    end
end
