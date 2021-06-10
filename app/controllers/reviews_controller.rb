class ReviewsController < ApplicationController

    get '/reviews' do
        @reviews = Review.all
        #binding.pry
        erb :'book-reviews/index'
    end
    
    get '/reviews/new' do
        erb :'book-reviews/new'
    end

    post '/review' do
        review = current_user.reviews.build(params)
        review.save
        redirect to '/reviews'
    end
    
end