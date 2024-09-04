require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with a name and email' do
    user = User.new(name: 'John Doe', email: 'john.doe@example.com')
    expect(user).to be_valid
  end

  it 'is not valid without a name' do
    user = User.new(email: 'john.doe@example.com')
    expect(user).to_not be_valid
  end

  it 'is not valid without an email' do
    user = User.new(name: 'John Doe')
    expect(user).to_not be_valid
  end

  it 'is not valid with a duplicate email' do
    User.create!(name: 'Jane Doe', email: 'jane.doe@example.com')
    user = User.new(name: 'John Doe', email: 'jane.doe@example.com')
    expect(user).to_not be_valid
  end
end
