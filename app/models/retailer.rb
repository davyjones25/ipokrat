class Retailer < ApplicationRecord
	belongs_to :user
	
	has_many :prescriptions
	has_many :drugs, through: :prescriptions
	
	has_many :clients, through: :prescriptions

	validates :name, :siret, :address, :phone, presence: true
end
