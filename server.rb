require 'sinatra'
require 'pry'
require_relative 'lib/hi_low'
require_relative 'lib/russian_roulette'

get '/' do
	@player = params[:name]
	@wallet = params[:wallet]
	erb :index
end

post '/' do
	@player = params[:name]
	@wallet = params[:wallet]
	erb :test
end

get '/high_low' do
  @computer_card = HighLow.new.computer_card
	erb :high_low
end

post '/high_low' do
  @result = HighLow.new_compare(params[:computer_card_value], params[:guess])
  erb :high_low_result
end

get '/russian' do
  @russian = RussianRoulette.new
  erb :russian
end

post '/russian' do
  @trigger = params[:trigger]
  erb :russian
end




# post '/russian' do
# end
