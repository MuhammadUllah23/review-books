class ReviewsController < ApplicationController

    get '/reviews' do
        @reviews = Review.all
        #binding.pry
        erb :'book-reviews/index'
    end
    
    get '/reviews/new' do
        redirect_if_not_logged_in 
        @books = Book.all
        erb :'book-reviews/new'
    end

    post '/review' do
        redirect_if_not_logged_in 
        @review = current_user.reviews.new(params[:review])
        if !params[:book][:book_name].empty?
            @review.book = Book.create(params[:book])
        end

        if !@review.save
            redirect to "/reviews/new"
        else
            redirect_if_not_authorized
            @review.save
            redirect to "/review/#{@review.id}"
        end
         
        
    end

    get "/review/edit/:id" do
        redirect_if_not_logged_in 
        @review = Review.find(params[:id])
        redirect_if_not_authorized
        erb :'book-reviews/edit'
    end

    patch '/review/:id' do
        redirect_if_not_logged_in 
        @review = Review.find(params[:id])
        #binding.pry
        redirect_if_not_authorized 
        @review.update(params[:review])
        redirect to "/review/#{@review.id}"
    end

    get '/review/:id' do
        @review = Review.find(params[:id])
        #binding.pry
        erb :'book-reviews/show'
    end

    delete '/review/:id' do
        redirect_if_not_logged_in 
        @review = Review.find(params[:id])
        redirect_if_not_authorized 
        @review.destroy
        redirect to "/reviews"
    end
   
    private
        def redirect_if_not_authorized 
            if @review.user != current_user 
                redirect '/reviews'
            end
        end
end