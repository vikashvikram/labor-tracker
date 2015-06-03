json.array!(@medical_tests) do |medical_test|
  json.extract! medical_test, :id, :date, :place, :user_id, :patient_id, :weight, :tobacco, :alcohol, :heart_rate, :fetal_heart_sound, :uterus_contraction, :temperature, :sugar, :blood_pressure, :folic_acid_supplimentation_level, :state, :hemoglobin, :platelet_count
  json.url medical_test_url(medical_test, format: :json)
end
