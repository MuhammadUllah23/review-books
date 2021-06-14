class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :book
    validates :review_title, :book_review, :book_id, presence: true
end