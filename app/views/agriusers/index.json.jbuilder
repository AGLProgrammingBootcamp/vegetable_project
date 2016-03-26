json.array!(@agriusers) do |agriuser|
  json.extract! agriuser, :id, :name, :email
  json.url agriuser_url(agriuser, format: :json)
end
