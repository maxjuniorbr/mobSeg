json.array!(@metiers) do |metier|
  json.extract! metier, :id, :value
  json.url metier_url(metier, format: :json)
end
