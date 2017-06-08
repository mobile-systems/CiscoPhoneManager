class PhoneNumber < ActiveRecord::Base
  belongs_to :area_code
  has_and_belongs_to_many :phone_number_groups
end
