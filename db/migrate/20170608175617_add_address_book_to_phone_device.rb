class AddAddressBookToPhoneDevice < ActiveRecord::Migration[5.0]
  def change
    add_reference :phone_devices, :address_book, index: true, foreign_key: true
  end
end
