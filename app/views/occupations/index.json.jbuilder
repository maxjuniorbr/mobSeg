json.array!(@occupations) do |occupation|
  json.extract! occupation, :id, :value
  json.url occupation_url(occupation, format: :json)
end
