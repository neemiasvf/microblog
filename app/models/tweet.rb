class Tweet < ApplicationRecord
  belongs_to :user, inverse_of: :tweets

  validates :content, presence: true, length: { maximum: 280 }

  scope :posted_by, ->(user) { where(user: user) }
end
