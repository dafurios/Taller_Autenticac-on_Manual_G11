class SessionsController < ApplicationController

  def new
    @user = User.new

  end

  def destroy
    reset_session
    redirect_to root_path, notice: 'Has cerrado sesión con éxito'
  end
end
