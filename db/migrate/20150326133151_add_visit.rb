class AddVisit < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.string :assessment, null: false
      t.string :height, null: false
      t.string :address, null: true
      t.string :phone, null: true
      t.string :email, null: true
      t.date :date_of_birth, null: true
      t.timestamps null: false
    end
  end
end
