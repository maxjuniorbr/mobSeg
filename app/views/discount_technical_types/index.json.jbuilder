json.array!(@discount_technical_types) do |discount_technical_type|
  json.extract! discount_technical_type, :id, :value
  json.url discount_technical_type_url(discount_technical_type, format: :json)
end
