class User < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation, :token

  has_secure_password
end
