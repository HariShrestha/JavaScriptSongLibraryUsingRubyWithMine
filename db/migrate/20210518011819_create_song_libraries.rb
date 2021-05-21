class CreateSongLibraries < ActiveRecord::Migration[6.0]
  def change
    create_table :song_libraries do |t|
      t.integer :Song_id
      t.string :Title
      t.string :Artist
      t.date :Release_Date
      t.integer :Price

      t.timestamps
    end
  end
end
