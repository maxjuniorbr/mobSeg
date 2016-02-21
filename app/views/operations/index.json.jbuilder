json.array!(@operations) do |operation|
  json.extract! operation, :id, :value
  json.url operation_url(operation, format: :json)
end
