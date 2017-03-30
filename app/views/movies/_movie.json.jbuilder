json.extract! movie, :id, :title, :genre, :rating, :image_url, :created_at, :updated_at
json.url movie_url(movie, format: :json)
