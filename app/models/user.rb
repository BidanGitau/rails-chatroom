class User < ApplicationRecord
  has_many :messages
  validate :username
  has_secure_password
end
