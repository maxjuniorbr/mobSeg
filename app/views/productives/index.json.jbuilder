json.array!(@productives) do |productive|
  json.extract! productive, :id, :name, :short_name, :gender_id, :cpf, :email, :birth, :status
  json.url productive_url(productive, format: :json)
end
