class UsersController < ApplicationController
    get '/readers' do
        @users = User.all
        erb :'users/index'
    end
    get '/signup' do
        erb :'users/signup'
    end
    post '/signup' do
        #binding.pry
        @user = User.new(params)
        if @user.username.blank? || @user.password.blank?
            redirect to '/failure'
        else
            @user.save
            session[:user_id] = @user.id
              redirect to '/readers'
        end
       
    end

    get '/login' do
        erb :login
    end

    post '/login' do
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect to '/readers'
        else
            redirect to '/failure'
        end
        
    end

    get '/failure' do
        erb :error
    end
    
end