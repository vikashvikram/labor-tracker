class CreateMedicalTests < ActiveRecord::Migration
  def change
    create_table :medical_tests do |t|
      t.date :date
      t.string :place
      t.integer :user_id
      t.integer :patient_id
      t.decimal :weight
      t.decimal :tobacco
      t.decimal :alcohol
      t.integer :heart_rate
      t.string :fetal_heart_sound
      t.string :uterus_contraction
      t.decimal :temperature
      t.decimal :sugar
      t.string :blood_pressure
      t.string :folic_acid_supplimentation_level
      t.string :state
      t.integer :hemoglobin
      t.integer :platelet_count

      t.timestamps null: false
    end
  end
end
