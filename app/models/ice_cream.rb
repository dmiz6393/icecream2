class IceCream < ApplicationRecord
    has_many :ice_cream_orders, dependent: :destroy
    has_many :orders, through: :ice_cream_orders
    
end
