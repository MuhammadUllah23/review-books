class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :book_name
      t.string :book_author
      t.string :book_genre
      t.string :book_description
    end
  end
end
