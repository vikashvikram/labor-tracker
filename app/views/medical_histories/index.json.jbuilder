json.array!(@medical_histories) do |medical_history|
  json.extract! medical_history, :id, :patient_id, :date, :incident_type, :comment
  json.url medical_history_url(medical_history, format: :json)
end
