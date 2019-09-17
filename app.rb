require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do 
    @user_name = params[:name]
    @user_name.reverse
  end

  get '/square/:number' do 
    @number = params[:number].to_i
    "#{@number**2}"
  end

  get '/say/:number/:phrase' do 
    @number = params[:number].to_i
    @phrase = params[:phrase]

    "#{@phrase}" * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do 
      @op = params[:operation]
      @n1 = params[:number1].to_i
      @n2 = params[:number2].to_i
    if @op == "add"
      "#{@n1 + @n2}"
   elsif @op == "subtract" 
      "#{@n1 - @n2}"
    elsif @op == "multiply"
      "#{@n1 * @n2}"
    elsif @op == 'divide' 
      "#{@n1 / @n2}"
  end 
end
 
end