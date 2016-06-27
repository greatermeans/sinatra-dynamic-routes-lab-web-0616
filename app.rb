require_relative 'config/environment'

class App < Sinatra::Base

	get '/reversename/:name' do
		@name = params["name"]
		erb :'reversename'
	end

	get '/square/:number' do
		@number = params["number"].to_i
		erb :'square'
	end

	get '/say/:number/:phrase' do
		@number = params["number"] 
		@phrase = params["phrase"]
		erb :'say'
	end

	get '/say/:word1/:word2/:word3/:word4/:word5' do
		@words = [params["word1"],
		params["word2"],params["word3"],
		params["word4"],params["word5"]]
		erb :'say'
	end

	get '/:operation/:number1/:number2' do
		@operation = params["operation"]
		@num1 = params["number1"].to_i
		@num2 = params["number2"].to_i
		erb :'index'
	end



end