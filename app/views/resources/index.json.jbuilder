json.array!(@resources) do |resource|
  json.extract! resource, :id, :company, :description, :url
  json.url resource_url(resource, format: :json)
end
