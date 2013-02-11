class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.string :website
      t.string :cuisine
      t.string :comments
      t.string :picture

      t.timestamps
    end
  end
end
