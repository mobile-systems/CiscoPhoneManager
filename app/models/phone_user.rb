class PhoneUser < ActiveRecord::Base
  has_many :phone_devices
end
