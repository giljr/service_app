class AddStatusToOrders < ActiveRecord::Migration[7.2]
  def change
    add_column :orders, :status, :string
  end
end
