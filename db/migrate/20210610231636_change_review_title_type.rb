class ChangeReviewTitleType < ActiveRecord::Migration[5.2]
  def change
    change_column :reviews, :review_title, :string
  end
end
