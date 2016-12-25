class User < ActiveRecord::Base
  email_regex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, :email, :password, :confirm_password, :presence => true
  validates :email, :uniqueness => true, :format => { :with => email_regex }
end
