class Retailer < ApplicationRecord
	belongs_to :role
	
	has_many :prescriptions
	has_many :drugs, through: :prescriptions
	
	has_many :clients, through: :prescriptions

	validates :name, :siret, :address, presence: true
end
