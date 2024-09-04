require 'rails_helper'

RSpec.describe OrdersController, type: :controller do
  let(:user) { User.create(name: "John Doe", email: "john@example.com") }
  let(:valid_attributes) { { user_id: user.id, amount: 100.50 } }
  let(:invalid_attributes) { { user_id: nil, amount: nil } }

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Order" do
        expect {
          post :create, params: { order: valid_attributes }
        }.to change(Order, :count).by(1)
      end

      it "returns a created status" do
        post :create, params: { order: valid_attributes }
        expect(response).to have_http_status(:created)
      end
    end

    context "with invalid params" do
      it "returns an unprocessable entity status" do
        post :create, params: { order: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
