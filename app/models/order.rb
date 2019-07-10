class Order < ApplicationRecord
  belongs_to :user
  has_many :ice_cream_orders 
  has_many :ice_creams, :through => :ice_cream_orders
  # helper_method :total_price

  def total_price
    self.ice_cream_orders.map { |ico| ico.quantity * ico.ice_cream.price }.inject(:+)
  end
end
