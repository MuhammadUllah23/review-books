class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :book_name
      t.string :book_author
      t.string :book_review
      t.integer :user_id
    end
  end
end
