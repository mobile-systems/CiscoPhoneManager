class CreateTechUsers < ActiveRecord::Migration
  def change
    create_table :tech_users do |t|
      t.string :name
      t.string :login
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
