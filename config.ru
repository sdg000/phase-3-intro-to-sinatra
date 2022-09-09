require 'sinatra'

class App < Sinatra::Base

  # get '/hello' do
  #   '<h2>Hello <em>World</em>!</h2>'
  # end

  # get "/potato" do 
  #   "<h2> I like potato </h2>"
  # end

  # get "/dice" do 
  #   dice = rand(1..6)
  #   "<h2>You rolled #{dice}</h2>"
  # end

  # Add this line to set the Content-Type header for all responses
  set :default_content_type, 'application/json'

  get '/add/:num1/:num2' do
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i

    sum = num1 + num2
    { result: sum }.to_json
  end
  
end

run App
