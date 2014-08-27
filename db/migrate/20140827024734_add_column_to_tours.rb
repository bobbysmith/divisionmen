class AddColumnToTours < ActiveRecord::Migration
  def change
    add_column :tours, :bands, :string
  end
end
