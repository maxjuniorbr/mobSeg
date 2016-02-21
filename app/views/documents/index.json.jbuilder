json.array!(@documents) do |document|
  json.extract! document, :id, :value, :document_type_id, :dispatcher_entity, :dispatcher_date
  json.url document_url(document, format: :json)
end
