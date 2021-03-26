class Promotion < ApplicationRecord
  validates :name, :code, :discount_rate, :coupon_quantity, 
            :expiration_date, presence: { message: 'não pode ficar em branco' }
  validates :name, :code, uniqueness: { message: 'deve ser único' }          
end