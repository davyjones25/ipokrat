class Doctor < ApplicationRecord
	belongs_to :role

	has_many :prescriptions
	has_many :drugs, through: :prescriptions
	
	has_many :clients, through: :prescriptions

	validates :first_name, :last_name, :address, :rpps, :am, :phone, :speciality, presence: true
end
