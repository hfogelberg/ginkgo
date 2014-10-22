json.array!(@news) do |news|
  json.extract! news, :id, :header, :body, :image
  json.url news_url(news, format: :json)
end
