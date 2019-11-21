class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable

  has_many :tweets, inverse_of: :user

  validates :full_name, :email, :encrypted_password, presence: true
  validates :email, uniqueness: { case_sensitive: false }
end
