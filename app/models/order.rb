class Order < ApplicationRecord
  belongs_to :user
  has_many :ice_cream_orders, dependant: :destroy
  has_many :icecreams, through: :ice_cream_orders
  accepts_nested_attributes_for :ice_creams
end
