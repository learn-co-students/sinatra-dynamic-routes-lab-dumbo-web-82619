require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversed = params[:name].reverse
    "Reversed: #{@reversed}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i ** 2
    "Squared: #{@squared}"
  end

  get '/say/:number/:phrase' do
    # The below is WRONG: 
    # @num = params[:number].to_i
    # @phrase = params[:phrase]
    # @answer = @num.times {@phrase}
    # "#{@answer}"

    answer = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times {answer += @phrase}
    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5 + "."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    case @operation
    when "add"
      answer = @number1 + @number2
    when "subtract"
      answer = @number1 - @number2
    when "multiply"
      answer = @number1 * @number2
    when "divide"
      answer = @number1.to_f / @number2
    end
    answer.to_s
  end

end