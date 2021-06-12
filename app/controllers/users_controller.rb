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
        user = User.new(params)
        if !user.save
            redirect to '/signup'
        else
            user.save
            session[:user_id] = user.id
            redirect to '/readers'
        end     
    end

    get '/login' do
        erb :login
    end

    post '/login' do
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect to '/readers'
        else
            redirect to '/login'
        end  
    end

    get '/user/edit/:id' do
        redirect_if_not_logged_in
        @user = User.find(params[:id])
        redirect_if_not_authorized
        erb :'users/edit'
    end

    patch '/user/:id' do
        #raise params.inspect
        redirect_if_not_logged_in
        @user = User.find(params[:id])
        #binding.pry
        redirect_if_not_authorized
        #@user.username = params[:username]
        @user.update(params[:user])
        
        #binding.pry
        redirect to "/account/#{@user.id}"
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

    
    private
        def redirect_if_not_authorized 
            if @user != current_user 
                redirect to '/'
            end
        end
end