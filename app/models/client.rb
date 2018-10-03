class Client < ApplicationRecord
	has_many :prescriptions
	belongs_to :doctor
	belongs_to :retailer

	validates [:name, :birthdate, :phone], presence: true
end
