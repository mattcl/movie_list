class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :wishlist
      t.references :movie
      t.boolean :owned
      t.datetime :owned_on
      t.integer :sort_order

      t.timestamps
    end
    add_index :items, :wishlist_id
    add_index :items, :movie_id
  end
end
