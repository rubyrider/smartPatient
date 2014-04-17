json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :name, :title, :experience, :active, :doc_code, :password_digest, :age
  json.url doctor_url(doctor, format: :json)
end
