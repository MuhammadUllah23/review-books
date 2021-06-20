class UsersController < ApplicationController
    get '/readers' do
        @users = User.all
        erb :'users/index'
    end
    get '/signup' do
        erb :'sessions/signup'
    end

    post '/signup' do
        #binding.pry
        user = User.new(params)
        if !user.save
            flash[:message] = "Username has been taken."
            redirect to '/signup'
        else
            user.save
            session[:user_id] = user.id
            redirect to '/'
        end     
    end

    get '/login' do
        erb :'sessions/login'
    end

    post '/login' do
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect to '/'
        else
            flash[:message] = "Invalid Username/Password"
            redirect to '/login'
        end  
    end


    get '/account/:id' do
        @user = User.find(params[:id])
        #binding.pry
        erb :'users/account'
    end 

    post '/logout' do
        session.clear
        redirect to "/"
    end
    
    
end