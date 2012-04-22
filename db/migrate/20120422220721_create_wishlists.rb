class CreateWishlists < ActiveRecord::Migration
  def change
    create_table :wishlists do |t|
      t.references :user
      t.string :title
      t.text :description
      t.boolean :public

      t.timestamps
    end
  end
end
