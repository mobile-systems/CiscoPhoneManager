class CreateAddressBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :address_books do |t|

      t.timestamps
    end

    create_join_table :address_books, :phone_number_groups
  end
end
