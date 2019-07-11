class User < ApplicationRecord
    has_many :orders
    has_secure_password

    validates :email, uniqueness: true, presence: true
    validates :name, presence: true

    validates :password, :presence => true,
                   :confirmation => true,
                   :length => {:within => 8..40}
                
end
