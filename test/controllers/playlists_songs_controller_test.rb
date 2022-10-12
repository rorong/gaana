require "test_helper"

class PlaylistsSongsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @playlists_song = playlists_songs(:one)
  end

  test "should get index" do
    get playlists_songs_url
    assert_response :success
  end

  test "should get new" do
    get new_playlists_song_url
    assert_response :success
  end

  test "should create playlists_song" do
    assert_difference("PlaylistsSong.count") do
      post playlists_songs_url, params: { playlists_song: { playlist_id: @playlists_song.playlist_id, song_id: @playlists_song.song_id } }
    end

    assert_redirected_to playlists_song_url(PlaylistsSong.last)
  end

  test "should show playlists_song" do
    get playlists_song_url(@playlists_song)
    assert_response :success
  end

  test "should get edit" do
    get edit_playlists_song_url(@playlists_song)
    assert_response :success
  end

  test "should update playlists_song" do
    patch playlists_song_url(@playlists_song), params: { playlists_song: { playlist_id: @playlists_song.playlist_id, song_id: @playlists_song.song_id } }
    assert_redirected_to playlists_song_url(@playlists_song)
  end

  test "should destroy playlists_song" do
    assert_difference("PlaylistsSong.count", -1) do
      delete playlists_song_url(@playlists_song)
    end

    assert_redirected_to playlists_songs_url
  end
end
