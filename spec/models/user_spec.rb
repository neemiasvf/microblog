require 'rails_helper'

RSpec.describe User, type: :model do
  subject { FactoryBot.build :user }
  it { should have_many(:tweets).inverse_of(:user) }
  it { should validate_presence_of :full_name }
  it { should validate_presence_of :email }
  it { should validate_presence_of :encrypted_password }
  it { should validate_uniqueness_of(:email).case_insensitive }
end
