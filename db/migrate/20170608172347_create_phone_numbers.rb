class CreatePhoneNumbers < ActiveRecord::Migration
  def change
    create_table :phone_numbers do |t|
      t.string :phone
      t.references :area_code, index: true, foreign_key: true

      t.timestamps null: false
    end

    create_join_table :phone_numbers, :phone_number_groups
  end
end
