class Item < ApplicationRecord
  belongs_to :genre
  has_many :cart_items
  has_many :order_details
  
  attachment :image
  
  validates :introduction,length: {maximum: 200}
end
