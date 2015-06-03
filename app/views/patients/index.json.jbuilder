json.array!(@patients) do |patient|
  json.extract! patient, :id, :name, :dob, :id_type, :id_num, :place, :pincode, :district, :state, :blood_type
  json.url patient_url(patient, format: :json)
end
