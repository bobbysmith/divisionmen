class AddColumnToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :embed, :text
  end
end
