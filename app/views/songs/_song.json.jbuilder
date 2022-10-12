json.extract! song, :id, :name, :filename, :artist_id, :album_id, :created_at, :updated_at
json.url song_url(song, format: :json)
