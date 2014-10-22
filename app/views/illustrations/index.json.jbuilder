json.array!(@illustrations) do |illustration|
  json.extract! illustration, :id, :name, :image
  json.url illustration_url(illustration, format: :json)
end
