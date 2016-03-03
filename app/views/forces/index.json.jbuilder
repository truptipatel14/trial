json.array!(@forces) do |force|
  json.extract! force, :id, :user, :name, :email
  json.url force_url(force, format: :json)
end
