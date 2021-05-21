require "application_system_test_case"

class SongLibrariesTest < ApplicationSystemTestCase
  setup do
    @song_library = song_libraries(:one)
  end

  test "visiting the index" do
    visit song_libraries_url
    assert_selector "h1", text: "Song Libraries"
  end

  test "creating a Song library" do
    visit song_libraries_url
    click_on "New Song Library"

    fill_in "Artist", with: @song_library.Artist
    fill_in "Price", with: @song_library.Price
    fill_in "Release date", with: @song_library.Release_Date
    fill_in "Song", with: @song_library.Song_id
    fill_in "Title", with: @song_library.Title
    click_on "Create Song library"

    assert_text "Song library was successfully created"
    click_on "Back"
  end

  test "updating a Song library" do
    visit song_libraries_url
    click_on "Edit", match: :first

    fill_in "Artist", with: @song_library.Artist
    fill_in "Price", with: @song_library.Price
    fill_in "Release date", with: @song_library.Release_Date
    fill_in "Song", with: @song_library.Song_id
    fill_in "Title", with: @song_library.Title
    click_on "Update Song library"

    assert_text "Song library was successfully updated"
    click_on "Back"
  end

  test "destroying a Song library" do
    visit song_libraries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Song library was successfully destroyed"
  end
end
