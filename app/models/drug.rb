class Drug < ApplicationRecord
  belongs_to :prescription

  validates :name, :posology, presence: true
end
