class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.text :title
      t.text :synopsis
    end
  end
end
