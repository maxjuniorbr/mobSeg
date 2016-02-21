json.array!(@insurers) do |insurer|
  json.extract! insurer, :id, :name, :branch_office, :standard_commission
  json.url insurer_url(insurer, format: :json)
end
