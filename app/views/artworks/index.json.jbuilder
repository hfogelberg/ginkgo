json.array!(@artworks) do |artwork|
  json.extract! artwork, :id, :name, :description, :height, :width, :Collection_id, :Technique_id, :Material_id, :price, :for_sale, :image
  json.url artwork_url(artwork, format: :json)
end
