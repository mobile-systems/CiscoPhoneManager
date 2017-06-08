class PhoneDevice < ActiveRecord::Base
  belongs_to :phone_user
  has_many :phone_numbers
  belongs_to :address_book
end
