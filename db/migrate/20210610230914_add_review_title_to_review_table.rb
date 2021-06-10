class AddReviewTitleToReviewTable < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :review_title, :text
  end
end
