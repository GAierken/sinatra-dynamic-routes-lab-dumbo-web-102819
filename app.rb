require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
  @username = params[:name]
  "#{@username.reverse}"
  end 

  get '/square/:number' do 
  @number = params[:number]
  result = @number.to_i * @number.to_i
  "#{result}"

  end 
  
  get '/say/:number/:phrase' do 
    @number = params[:number]
    @phrase = params[:phrase]
    "#{@phrase}" * @number.to_i
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} " + "#{@word2} " + "#{@word3} " + "#{@word4} " + "#{@word5}."
  end 
  
  get '/:operation/:number1/:number2' do 
       @operation = params[:operation]
       @number1 = params[:number1]
       @number2 = params[:number2]
      if @operation == 'add'
         result = @number1.to_i + @number2.to_i
      elsif @operation == 'subtract'
         result = @number1.to_i - @number2.to_i
      elsif @operation == 'multiply'
          result = @number1.to_i * @number2.to_i
      else
           result =  @number1.to_i / @number2.to_i
      end 
      "#{result}"
  end 


end