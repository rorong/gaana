class Playlist < ApplicationRecord
  belongs_to :user
  has_many :playlists_songs
end
