class Physician < ApplicationRecord
  has_many :assignments
  has_many :patients, through: :assignments
  has_many :physician_addresses
  has_many :addresses, through: :physician_addresses


  accepts_nested_attributes_for :addresses
end
