require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

    get "/reversename/:name" do 
     @r_name = params[:name].reverse
     "#{@r_name}"
    end

    get "/square/:number" do
        @num = params[:number].to_i * params[:number].to_i
        "#{@num}"
    end

    get "/say/:number/:phrase" do
      @n = params[:phrase] * params[:number].to_i
     "#{@n}"
    end

    get "/say/:word1/:word2/:word3/:word4/:word5" do
    @w = params[:word1]
    @o =  params[:word2]
    @r = params[:word3] 
    @d =  params[:word4] 
    @s = params[:word5]
    @t = " "
    "#{@w +  @t +@o + @t + @r + @t + @d + @t + @s}."
    end

    get "/:operation/:number1/:number2" do 
    #  @w = params[:operation]
    #   @num1 = params[:number1].to_i + params[:operation].to_i + params[:number2].to_i
      
      @num1 = params[:operation]
      if @num1 == "add"
        @num1 = "+"
      elsif @num1 == "subtract"
        @num1 = "-"
      elsif @num1 == "multiply"
        @num1 = "*"
      else @num1 == "divide"
        @num1 = "/"
      end
      @num2 = params[:number1].to_i
      @num3 = params[:number2].to_i
      @num4 = @num2 ,@num1, @num3
   
      "#{@num4}"
    end



end

