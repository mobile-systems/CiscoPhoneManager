class AddressBook < ApplicationRecord
  has_many :phone_devices
  has_and_belongs_to_many :phone_number_groups
  has_many :phone_numbers, through: :phone_number_groups
end
