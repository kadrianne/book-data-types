class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.date :pub_date
      t.float :price
      t.boolean :still_in_print
      t.integer :num_pages
      t.text :synopsis
      t.string :cover_type
      t.string :isbn
      t.text :cover_art

      t.timestamps
    end
  end
end
