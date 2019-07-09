class IceCreamOrder < ApplicationRecord
  belongs_to :ice_cream
  belongs_to :order
end
