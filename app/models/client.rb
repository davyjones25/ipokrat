class Client < ApplicationRecord
	belongs_to :user

	has_many :prescriptions, dependent: :destroy
	has_many :drugs, through: :prescriptions

	has_many :doctors, through: :prescriptions

	validates :first_name, :last_name, :birthdate, :phone, presence: true
end
