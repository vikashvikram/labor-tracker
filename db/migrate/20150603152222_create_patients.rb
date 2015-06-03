class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.date :dob
      t.string :id_type
      t.string :id_num
      t.string :place
      t.integer :pincode
      t.string :district
      t.string :state
      t.string :blood_type

      t.timestamps null: false
    end
  end
end
