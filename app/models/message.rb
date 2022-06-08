class Message < ApplicationRecord
  validate :body
  belongs_to :user
end
