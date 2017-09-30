class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :description
      t.string :author_name
      t.float :sum_rate
      t.integer :category_id
      #chua add column photo vs song file
      t.timestamps
    end
  end
end
