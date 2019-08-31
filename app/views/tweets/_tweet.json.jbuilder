json.extract! tweet, :id, :favorite, :created_at, :updated_at
json.url tweet_url(tweet, format: :json)
