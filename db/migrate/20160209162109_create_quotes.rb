class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text :content
      t.integer :rating
      t.text :character_id
      t.text :episode_id

      t.timestamps
    end
  end
end
