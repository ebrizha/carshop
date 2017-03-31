class Basket < ApplicationRecord
  belongs_to  :user
  has_and_belongs_to_many :product,  :join_table => :basket_products
end
