class UsersController < ApplicationController
    get '/readers' do
        erb :'users/index'
    end
    get '/signup' do
        erb :'users/signup'
    end
    post '/signup' do
        #binding.pry
        
        if params[:email] || params[:username] || params[:password].empty?
            redirect to '/signup'
        else
            @user = User.create(:email => params[:email], :username => params[:username], :password => params[:password])
            session[:user_id] = @user.id
            redirect to '/readers'
        end
       
    end
    
end