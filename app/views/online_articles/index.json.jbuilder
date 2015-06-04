json.array!(@online_articles) do |online_article|
  json.extract! online_article, :id, :Title, :Description, :Online_path, :Author
  json.url online_article_url(online_article, format: :json)
end
