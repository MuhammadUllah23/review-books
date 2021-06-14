class Book < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews
    validates :book_name, :book_author, :book_genre, presence: true
end