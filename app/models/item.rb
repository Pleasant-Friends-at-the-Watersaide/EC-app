class Item < ApplicationRecord
  belongs_to :genre
  has_many :cart_items, dependent: :destroy
  has_many :order_details, dependent: :destroy

  attachment :image

  with_options presence: true do
    validates :name
    validates :introduction, length: {maximum: 200}
    validates :price
  end

   def active_for_authentication?
    super && (self.is_active == false)
   end
end
