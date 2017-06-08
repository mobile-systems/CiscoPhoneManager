class PhoneNumberGroup < ActiveRecord::Base
  has_and_belongs_to_many :phone_numbers
  has_and_belongs_to_many :address_books
end
