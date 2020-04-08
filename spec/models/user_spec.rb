require 'rails_helper'

=begin 

    It must be created with a password and password_confirmation fields
        These need to match so you should have an example for where they are not the same
        These are required when creating the model so you should also have an example for this
    Emails must be unique (not case sensitive; for example, TEST@TEST.com should not be allowed if test@test.COM is in the database)
    Email, first name, and last name should also be required

=end



RSpec.describe User, type: :model do
  it "new User with password && password_confirmation fields present" do 
    user = User.new
    expect(user.password).to be_present
    expect(user.password_confirmation).to be_present
  end
end
