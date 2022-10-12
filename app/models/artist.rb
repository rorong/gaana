class Artist < ApplicationRecord
  # has_many :albums
  has_many :songs
  has_and_belongs_to_many :albums
end
