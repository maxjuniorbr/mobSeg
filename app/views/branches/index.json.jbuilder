json.array!(@branches) do |branch|
  json.extract! branch, :id, :value
  json.url branch_url(branch, format: :json)
end
