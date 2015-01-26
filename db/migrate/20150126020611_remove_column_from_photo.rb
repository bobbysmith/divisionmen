class RemoveColumnFromPhoto < ActiveRecord::Migration
  def change
    remove_column :photos, :review
  end
end
