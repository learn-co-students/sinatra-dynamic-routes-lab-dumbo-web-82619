require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do 
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number]
    "#{@number.to_i ** 2}"
  end

  get "/say/:number/:phrase" do
    @repeated_phrase = params[:phrase] * params[:number].to_i
    "#{@repeated_phrase}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @sentence = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    "#{@sentence}"
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    if @operation == "add"
      @sum = params[:number1].to_i + params[:number2].to_i
      "#{@sum}"
    elsif @operation == "subtract"
      @difference = params[:number1].to_i - params[:number2].to_i
      "#{@difference}"
    elsif @operation == "multiply"
      @product = params[:number1].to_i * params[:number2].to_i
      "#{@product}"
    elsif @operation == "divide"
      @quotient = params[:number1].to_i / params[:number2].to_i
      "#{@quotient}"
    end
  end
end