require 'rails_helper'

RSpec.describe Order, type: :model do
  it "is valid with valid attributes" do
    user = User.create(name: "John Doe", email: "john@example.com")
    order = Order.new(user: user, amount: 100.50)
    expect(order).to be_valid
  end

  it "is not valid without a user" do
    order = Order.new(amount: 100.50)
    expect(order).to_not be_valid
  end

  it "is not valid without an amount" do
    user = User.create(name: "John Doe", email: "john@example.com")
    order = Order.new(user: user)
    expect(order).to_not be_valid
  end
end
