require 'rails_helper'

RSpec.describe OrderProcessor, type: :service do
  describe '#call' do
    it "processes the order" do
      user = User.create(name: "John Doe", email: "john@example.com")
      order = Order.create(user: user, amount: 100.50)

      processor = OrderProcessor.new(order)
      processor.call

      expect(order.reload.status).to eq('processed')
    end
  end
end
