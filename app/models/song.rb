class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :album
  has_many :playlists_songs
  has_attached_file :mp3
  validates_attachment :mp3, :content_type => { :content_type => ["audio/mpeg", "audio/mp3"] }, :file_name => { :matches => [/mp3\Z/] }
end
