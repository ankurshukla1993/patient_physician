class Address < ApplicationRecord
  has_many :physician_addresses
  has_many :physicians, through: :physician_addresses

  has_many :patient_addresses
  has_many :patients, through: :patient_addresses
end
