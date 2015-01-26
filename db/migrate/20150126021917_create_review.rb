class CreateReview < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :quote
    end
  end
end
