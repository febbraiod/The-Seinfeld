class CreateCharacterEpisodes < ActiveRecord::Migration
  def change
    create_table :character_episodes do |t|
      t.integer :character_id
      t.integer :episode_id
    end
  end
end
