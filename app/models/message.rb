class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room
  has_one_attacked :image

  validates :content, presence: true
end
