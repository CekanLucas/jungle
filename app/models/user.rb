class User < ActiveRecord::Base
  has_secure_password
  validates_uniqueness_of :email, :case_sensitive => false
end