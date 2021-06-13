class DropBookDetailsFromReviewsTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :book_name
    remove_column :reviews, :book_author
    remove_column :reviews, :book_review
  end
end
