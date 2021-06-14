class BooksController < ApplicationController
    get "/book/:id" do
        @book = Book.find(params[:id])
        @reviews = Review.all
        erb :'books/show'
    end

end