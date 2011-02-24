require 'sinatra'

get '/say' do
	data = '{"say":"Hello World"}'
	#status = 200
	response.body = data
	response["ResponseText"] = "Hello World"
end