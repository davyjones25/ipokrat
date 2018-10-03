class Doctor < ApplicationRecord
	has_many :prescriptions
	has_many :clients, through: :prescriptions

	validates :first_name, :last_name, :address, :rpps, :am, :phone, :speciality, presence: true
end
