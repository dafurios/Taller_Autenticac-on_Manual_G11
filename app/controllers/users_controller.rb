class UsersController < ApplicationController

  def new
    @user = User.new

  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'Has ingresado con éxito!'
    else
      redirect_to users_sign_up_path, notice: 'Inscribete como usuario !'
    end



  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)


  end
end
