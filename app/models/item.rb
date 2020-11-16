class Item < ApplicationRecord
  belongs_to :user

  has_many :shoppingcart_items, dependent: :destroy

  has_many :shoppingcart, through: :shoppingcart_items
end
