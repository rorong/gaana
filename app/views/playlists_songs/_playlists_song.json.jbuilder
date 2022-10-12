json.extract! playlists_song, :id, :playlist_id, :song_id, :created_at, :updated_at
json.url playlists_song_url(playlists_song, format: :json)
