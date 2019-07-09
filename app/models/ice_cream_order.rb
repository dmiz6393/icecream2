class IceCreamOrder < ApplicationRecord
  belongs_to :icecream
  belongs_to :order
end
