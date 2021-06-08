class ReviewsController < ApplicationController


    get '/reviews/new' do
        
        erb :'book-reviews/new'
    end
    
end