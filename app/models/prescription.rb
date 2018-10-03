class Prescription < ApplicationRecord
  belongs_to :doctor
  belongs_to :client
  belongs_to :retailer
  has_many :drugs

  validates :length_of_treatment, presence: true
  validates_associated :drugs
end
