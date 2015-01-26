class AddColumnToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :review, :text
  end
end
