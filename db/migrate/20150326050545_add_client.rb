class AddClient < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :address, null: true
      t.string :phone, null: true
      t.string :email, null: true
      t.date :date_of_birth, null: true
      t.timestamps null: false
    end
  end
end
