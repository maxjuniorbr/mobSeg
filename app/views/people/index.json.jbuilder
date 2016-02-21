json.array!(@people) do |person|
  json.extract! person, :id, :name, :person_type_id, :accept_email, :metier_id, :contact, :birth, :marital_status_id, :gender_id, :politically_exposed_person, :exposed_name, :occupation_id, :salary_range_id
  json.url person_url(person, format: :json)
end
