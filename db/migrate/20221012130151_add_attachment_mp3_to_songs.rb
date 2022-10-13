class AddAttachmentMp3ToSongs < ActiveRecord::Migration[7.0]
  def up
    change_table :songs do |t|
      t.attachment :mp3
    end
  end

  def down
    remove_attachment :songs, :mp3
  end
end
