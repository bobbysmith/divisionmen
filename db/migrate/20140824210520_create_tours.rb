class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :venue
      t.string :city
      t.string :url
      t.datetime :date

      t.timestamps
    end
  end
end
