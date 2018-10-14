class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :timeoutable

  has_one :client
  has_one :doctor
  has_one :retailer

  validates :role, presence: true

  roles = ["doctor", "client", "retailer"]
end
