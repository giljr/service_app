require 'rails_helper'

RSpec.describe "Orders", type: :request do
  before do
    @user = User.create!(name: 'John Doe', email: 'john.doe@example.com')
    @order1 = Order.create!(user: @user, amount: 100.50)
    @order2 = Order.create!(user: @user, amount: 200.75)
  end

  describe "GET /index" do
    it "returns a success response" do
      get orders_path
      expect(response).to be_successful
    end

    it "renders the index template" do
      get orders_path
      expect(response).to render_template(:index)
    end

    it "loads all orders into @orders" do
      get orders_path
      expect(assigns(:orders)).to match_array([@order1, @order2])
    end
  end
end
