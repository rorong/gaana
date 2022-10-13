class RemoveFilenameFromSongs < ActiveRecord::Migration[7.0]
  def up
    remove_column :songs, :filename
  end

  def down
    add_column :songs, :filename, :string
  end
end
