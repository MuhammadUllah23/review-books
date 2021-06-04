class ReadersController < ApplicationController
    get '/readers' do
        erb :'readers/index'
    end
    get '/signup' do
        erb :'readers/signup'
    end
    post '/signup' do
        binding.pry
        puts params
        if params[:email] || params[:username] || params[:password].empty?
            redirect to '/signup'
        else
            @reader = Reader.create(email: params[:email], username: params[:username], password: params[:password])
            session[:reader_id] = @reader.id
            redirect to '/readers'
        end
       
    end
    
end