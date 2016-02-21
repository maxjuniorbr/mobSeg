json.array!(@mailing_addresses) do |mailing_address|
  json.extract! mailing_address, :id, :value
  json.url mailing_address_url(mailing_address, format: :json)
end
