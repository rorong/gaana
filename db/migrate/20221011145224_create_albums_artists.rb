class CreateAlbumsArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :albums_artists do |t|
      t.references :artist, null: false, foreign_key: true
      t.references :albums, null: false, foreign_key: true

      t.timestamps
    end
  end
end
