class CreateNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.integer :content
      t.integer :song_id
      t.integer :user_id
      t.boolean :seen

      t.timestamps
    end
  end
end
