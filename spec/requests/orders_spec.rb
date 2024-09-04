# spec/requests/orders_spec.rb
require 'rails_helper'

RSpec.describe "Orders", type: :request do
  let!(:order1) { Order.create(user_id: 1, amount: 100.0) }
  let!(:order2) { Order.create(user_id: 2, amount: 150.0) }

  describe "GET /index" do
    it "returns a success response" do
      get orders_path
      expect(response).to have_http_status(:ok)
    end

    it "renders the index template" do
      get orders_path
      expect(response).to render_template(:index)
    end

    it "loads all orders into @orders" do
      get orders_path
      expect(assigns(:orders)).to match_array([order1, order2])
    end
  end
end
