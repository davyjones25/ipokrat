class Retailer < ApplicationRecord
	has_many :prescriptions
	has_many :clients, through: :prescriptions

	validates [:name, :siret, :address], presence: true
end
