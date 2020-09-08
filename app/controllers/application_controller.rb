class ApplicationController < Sinatra::Base
  
  configure do 
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "gamecollection"
  end 
  
  get '/' do
    redirect to "/login"
  end
  
  helpers do 
    
    def logged_in?
      !!session[:username]
    end
    
    def login(username)
      session[:username] = username
    end

    def logout
      session.clear
    end
  end
  
end