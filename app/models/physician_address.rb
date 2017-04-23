class PhysicianAddress < ApplicationRecord
  belongs_to :physician
  belongs_to :address
end
