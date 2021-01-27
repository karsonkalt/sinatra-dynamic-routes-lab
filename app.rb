require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse!
    "#{@name}"
  end

  get "/square/:number" do
    @product = params[:number].to_i * params[:number].to_i
    "#{@product}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @output = ''

   @number.times do
      @output += @phrase
    end

    @output
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @words = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]
    @output = @words.join(" ") + "."
    @output
  end

  get "/:operation/:number1/:number2" do

    case params[:operation]
    when "add"
      @output = params[:number1].to_i + params[:number2].to_i
    when "subtract"
      @output = params[:number1].to_i - params[:number2].to_i
    when "multiply"
      @output = params[:number1].to_i * params[:number2].to_i
    when "divide"
      @output = params[:number1].to_i / params[:number2].to_i
    end
    "#{@output}"
  end

end