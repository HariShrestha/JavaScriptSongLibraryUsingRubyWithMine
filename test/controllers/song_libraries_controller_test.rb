require 'test_helper'

class SongLibrariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @song_library = song_libraries(:one)
  end

  test "should get index" do
    get song_libraries_url
    assert_response :success
  end

  test "should get new" do
    get new_song_library_url
    assert_response :success
  end

  test "should create song_library" do
    assert_difference('SongLibrary.count') do
      post song_libraries_url, params: { song_library: { Artist: @song_library.Artist, Price: @song_library.Price, Release_Date: @song_library.Release_Date, Song_id: @song_library.Song_id, Title: @song_library.Title } }
    end

    assert_redirected_to song_library_url(SongLibrary.last)
  end

  test "should show song_library" do
    get song_library_url(@song_library)
    assert_response :success
  end

  test "should get edit" do
    get edit_song_library_url(@song_library)
    assert_response :success
  end

  test "should update song_library" do
    patch song_library_url(@song_library), params: { song_library: { Artist: @song_library.Artist, Price: @song_library.Price, Release_Date: @song_library.Release_Date, Song_id: @song_library.Song_id, Title: @song_library.Title } }
    assert_redirected_to song_library_url(@song_library)
  end

  test "should destroy song_library" do
    assert_difference('SongLibrary.count', -1) do
      delete song_library_url(@song_library)
    end

    assert_redirected_to song_libraries_url
  end
end
