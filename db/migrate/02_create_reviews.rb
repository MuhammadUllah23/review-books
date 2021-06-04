class CreateReviews < ActiveRecord::Migration[5.2]
    def change
        create_table :reviews do |t|
            t.string :book_name
            t.string :book_author
            t.string :book_review
            t.integer :reader_id
        end
    end
end