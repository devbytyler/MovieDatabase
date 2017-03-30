class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.string :rating
      t.text :image_url

      t.timestamps
    end
  end
end
