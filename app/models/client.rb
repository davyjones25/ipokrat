class Client < ApplicationRecord
	belongs_to :doctor
	has_many :prescriptions, dependent: :destroy

	validates [:name, :birthdate], presence: true
end
