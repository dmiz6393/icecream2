class Order < ApplicationRecord
  belongs_to :user
  has_many :ice_cream_orders 
  has_many :ice_creams, through: :ice_cream_orders
  
# accepts_nested_attributes_for :ice_creams
  # helper_method :total_price

  def total_price
    self.ice_cream_orders.map { |ico| ico.ice_cream.price }.inject(:+)
  end

  
end
