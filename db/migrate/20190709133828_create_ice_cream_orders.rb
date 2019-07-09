class CreateIceCreamOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :ice_cream_orders do |t|
      t.integer :quantity
      t.references :ice_cream, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
