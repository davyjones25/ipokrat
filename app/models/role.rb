class Role < ApplicationRecord
	belongs_to :user

	has_many :clients
	has_many :doctors
	has_many :retailers

	validates :role, presence: true
end
