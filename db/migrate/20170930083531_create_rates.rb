class CreateRates < ActiveRecord::Migration[5.1]
  def change
    create_table :rates do |t|
      t.integer :review_id
      t.integer :song_id
      t.float :point

      t.timestamps
    end
  end
end
