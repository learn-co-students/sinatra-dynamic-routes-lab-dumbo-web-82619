require_relative 'config/environment'

class App < Sinatra::Base
  
    get '/reversename/:name' do
    @user_name = params[:name]
    @user_name.reverse
  end

  get '/square/:number' do
    @num1 = params[:number]
    @num2 = params[:number]

    @num1**@num2
  end

  get '/say/:number/:phrase' do
  end

end