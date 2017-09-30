class CreateSongSingers < ActiveRecord::Migration[5.1]
  def change
    create_table :song_singers do |t|
      t.integer :singer_id
      t.integer :song_id

      t.timestamps
    end
  end
end
