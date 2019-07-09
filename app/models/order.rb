class Order < ApplicationRecord
  belongs_to :user
  has_many :ice_cream_orders 
end
