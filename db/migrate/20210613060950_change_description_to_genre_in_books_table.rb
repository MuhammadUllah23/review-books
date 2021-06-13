class ChangeDescriptionToGenreInBooksTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :books, :book_description, :genre
  end
end
