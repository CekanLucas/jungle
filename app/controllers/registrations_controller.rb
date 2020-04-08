class RegistrationsController < ApplicationController

  def show
  end

  def new
    # TESTING:::: {"utf8"=>"✓", "authenticity_token"=>"1UuKGOStjcNTmSorg2/7YyG0MEFCkWuqwG11+al4FYKCujWz/Rjl9Ewxc/OxWKQQwB6/drat5T4ExITbu0ovnA==", "user"=>{"first_name"=>"Lucas", "last_name"=>"Cekan", "email"=>"CekanLucas@gmail.com"}, "commit"=>"Register Details", "controller"=>"registrations", "action"=>"new"}
    # @user = User.new
    @user = User.new(user_params)
    puts "TESTING:::: #{@user.inspect}"
    @user.save 
    redirect_to registration_path
  end

  private

  # allow fields in parameter to prevent malicious use
  # these are called 'strong parameters'
  def user_params 
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email
    )
  end
end
