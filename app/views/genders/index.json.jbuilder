json.array!(@genders) do |gender|
  json.extract! gender, :id, :value
  json.url gender_url(gender, format: :json)
end
