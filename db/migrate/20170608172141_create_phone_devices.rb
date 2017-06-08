class CreatePhoneDevices < ActiveRecord::Migration
  def change
    create_table :phone_devices do |t|
      t.string :mac
      t.string :model
      t.references :phone_user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
