class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :imdb_ref
      t.string :title
      t.string :year

      t.timestamps
    end
  end
end
