class RemoveArtistIdFromAlbums < ActiveRecord::Migration[7.0]
  def up
    remove_column :albums, :artist_id
  end

  def down
    add_column :albums, :artist_id, :bigint
  end
end
