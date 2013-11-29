json.array!(@artworks) do |artwork|
  json.extract! artwork, :name, :description, :height, :width, :depth, :Status_id, :Gallery_id, :Technique_id
  json.url artwork_url(artwork, format: :json)
end
