require "application_system_test_case"

class PlaylistsSongsTest < ApplicationSystemTestCase
  setup do
    @playlists_song = playlists_songs(:one)
  end

  test "visiting the index" do
    visit playlists_songs_url
    assert_selector "h1", text: "Playlists songs"
  end

  test "should create playlists song" do
    visit playlists_songs_url
    click_on "New playlists song"

    fill_in "Playlist", with: @playlists_song.playlist_id
    fill_in "Song", with: @playlists_song.song_id
    click_on "Create Playlists song"

    assert_text "Playlists song was successfully created"
    click_on "Back"
  end

  test "should update Playlists song" do
    visit playlists_song_url(@playlists_song)
    click_on "Edit this playlists song", match: :first

    fill_in "Playlist", with: @playlists_song.playlist_id
    fill_in "Song", with: @playlists_song.song_id
    click_on "Update Playlists song"

    assert_text "Playlists song was successfully updated"
    click_on "Back"
  end

  test "should destroy Playlists song" do
    visit playlists_song_url(@playlists_song)
    click_on "Destroy this playlists song", match: :first

    assert_text "Playlists song was successfully destroyed"
  end
end
