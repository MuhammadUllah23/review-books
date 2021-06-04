class ReadersController < ApplicationController
    get '/readers' do
        erb :'readers/index'
    end
    get '/signup' do
        erb :'readers/signup'
    end
    post '/readers' do
        @reader = Reader.create(email: params[:email], username: params[:username], password: params[:password])
        session[:reader_id] = @reader.id
        redirect to '/readers'
    end
    
end