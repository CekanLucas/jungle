class RegistrationsController < ApplicationController

  def show
  end

  def new
    @user = User.new(user_params)
    if @user.save 
      redirect_to login_path
    else
      redirect_to registration_path
    end
  end

  private

  # allow fields in parameter to prevent malicious use
  # these are called 'strong parameters'
  def user_params 
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :password
    )
  end
end
