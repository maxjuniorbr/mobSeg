json.array!(@suseps) do |susep|
  json.extract! susep, :id, :insurer_id, :person_id, :value
  json.url susep_url(susep, format: :json)
end
