class CreatePhoneUsers < ActiveRecord::Migration
  def change
    create_table :phone_users do |t|
      t.string :last_name
      t.string :first_name
      t.string :second_name

      t.timestamps null: false
    end
  end
end
