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

    get "/review/edit/:id" do
        @review = Review.find(params[:id])
        erb :'book-reviews/edit'
    end

    patch '/review/:id' do
        @review = Review.find(params[:id])
        @review.update(params)
        redirect to "/reviews/#{@review.id}"
    end

    get '/review/:id' do
        @review = Review.find(params[:id])
        erb :'book-reviews/show'
    end

    
end