# app/services/order_processor.rb
class OrderProcessor
  def initialize(order)
    @order = order
  end

  def call
    # Business logic to process the order
    @order.update(status: 'processed')
    # More complex operations...
  end
end
