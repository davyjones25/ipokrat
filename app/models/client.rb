class Client < ApplicationRecord
	belongs_to :user
	belongs_to :doctor
	belongs_to :retailer

	has_many :prescriptions, dependent: :destroy
	has_many :drugs, through: :prescriptions

	validates :first_name, :last_name, :birthdate, :phone, presence: true
end
