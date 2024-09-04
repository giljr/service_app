# spec/services/order_processor_spec.rb
RSpec.describe OrderProcessor, type: :service do
  it "processes the order" do
    order = create(:order)
    OrderProcessor.new(order).call
    expect(order.reload.status).to eq('processed')
  end
end
