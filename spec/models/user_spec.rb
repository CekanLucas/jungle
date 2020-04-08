require 'rails_helper'

=begin 

    It must be created with a password and password_confirmation fields
        These need to match so you should have an example for where they are not the same
        These are required when creating the model so you should also have an example for this
    Emails must be unique (not case sensitive; for example, TEST@TEST.com should not be allowed if test@test.COM is in the database)
    Email, first name, and last name should also be required

=end



RSpec.describe User, type: :model do
  
  subject { 
         described_class.new(password: "password", 
                             password_confirmation: "password"
         )  
  }

  describe "Validations" do
    it "email, first name and last name should be present when user created" do
      expect(subject).to be_present
      expect(subject).respond_to? :first_name
      expect(subject).respond_to? :last_name
      expect(subject).respond_to? :email
    end

    it "is not valid when password_confirmation invalid" do
      subject.password_confirmation = "password1"
      expect(subject).to_not be_valid
    end

    it "is valid when password_confirmation valid" do
      expect(subject).to be_valid
    end

    it "is not valid without a password" do
      subject.password = nil
      expect(subject).to_not be_valid
    end

    it "emails should be unique (case insensitive)" do
      # user  = User.new(email: 'example@email.com')
      user2 = User.new(email: 'EXAMPLE@email.com')
      expect(user2).to_not be_valid
    end
  end
end
