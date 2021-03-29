class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cart_items, dependent: :destroy
  has_many :orders    , dependent: :destroy
  has_many :addresses , dependent: :destroy

  with_options presence: true do
    validates :last_name
    validates :first_name
    validates :kana_last_name
    validates :kana_first_name
    validates :postcode
    validates :address
    validates :phone_number
    validates :email, uniqueness: true
  end
  
  def active_for_authentication?
    super && (self.is_deleted == false)
  end

end
