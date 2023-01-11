class User < ApplicationRecord
  attr_reader :password, :password_confirmation
  has_secure_password
end
