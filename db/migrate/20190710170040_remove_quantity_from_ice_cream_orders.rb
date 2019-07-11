class RemoveQuantityFromIceCreamOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :ice_cream_orders, :quantity, :integer
  end
end
