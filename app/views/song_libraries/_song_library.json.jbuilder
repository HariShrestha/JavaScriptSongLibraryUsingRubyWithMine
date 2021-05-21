json.extract! song_library, :id, :Song_id, :Title, :Artist, :Release_Date, :Price, :created_at, :updated_at
json.url song_library_url(song_library, format: :json)
