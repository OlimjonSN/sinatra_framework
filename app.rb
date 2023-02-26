require 'sinatra'
require 'sinatra/reloader'

  get '/' do
    erb :index
  end
  get '/news' do 
    erb :news
  end 
  get '/registration' do
    erb :registration
  end
  get '/about' do
    erb :about
  end
  get '/cabinet' do
    erb :cabinet
  end
  
  post '/'do
    @login = params[:login]
    @password = params[:password]

    if @login == "admin" && @password == "admin"
      @title = "hush kelibsiz"
      @massage = "siz o'z Saxifangizdasiz"
      erb :cabinet
    elsif @login != "admin" && @password == "admin"
      @title = "Login"
      @massage = "Loginni hato terdingiz"
      erb :login
    elsif @login == "admin" && @password != "admin"
      @title = "Password"
      @massage = "Passwordingizni hato terdingiz"
      erb :password
    else
    end
      
  end