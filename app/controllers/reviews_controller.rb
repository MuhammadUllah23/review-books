class ReviewsController < ApplicationController

    get '/reviews' do
        @reviews = Review.all
        erb :'book-reviews/index'
    end
    
    get '/reviews/new' do
        erb :'book-reviews/new'
    end

    post '/review' do
        @review = current_user.movies.build(params)
        redirect to '/review/:id'
    end
    
end