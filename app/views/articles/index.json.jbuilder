json.array!(@articles) do |article|
  json.extract! article, :id, :title, :online_location, :author_name
  json.url article_url(article, format: :json)
end
