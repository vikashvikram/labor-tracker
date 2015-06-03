class CreateMedicalHistories < ActiveRecord::Migration
  def change
    create_table :medical_histories do |t|
      t.integer :patient_id
      t.date :date
      t.string :incident_type
      t.string :comment

      t.timestamps null: false
    end
  end
end
