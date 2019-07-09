class Order < ApplicationRecord
  belongs_to :user
  has_many :ice_cream_orders, dependent: :destroy
  has_many :ice_creams, through: :ice_cream_orders
  accepts_nested_attributes_for :ice_creams
end
