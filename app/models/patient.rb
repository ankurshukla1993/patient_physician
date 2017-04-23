class Patient < ApplicationRecord
  has_many :assignments
  has_many :physicians, through: :assignments

  has_many :patient_addresses
  has_many :addresses, through: :patient_addresses

  accepts_nested_attributes_for :addresses
end
