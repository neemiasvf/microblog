class Tweet < ApplicationRecord
  belongs_to :user, inverse_of: :tweets

  validates :content, presence: true, length: { maximum: 280 }
end
