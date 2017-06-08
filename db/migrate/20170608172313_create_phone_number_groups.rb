class CreatePhoneNumberGroups < ActiveRecord::Migration
  def change
    create_table :phone_number_groups do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
