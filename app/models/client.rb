class Client < ApplicationRecord
	belongs_to :role
	belongs_to :doctor
	belongs_to :retailer

	has_many :prescriptions, dependent: :destroy
	has_many :drugs, through: :prescriptions

	validates :name, :birthdate, :phone, presence: true
end
