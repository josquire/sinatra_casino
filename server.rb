require 'sinatra'
require 'pry'
require_relative 'lib/hi_low'
# require_relative 'lib/russian_roulette'

get '/' do
	@player = params[:name]
	@wallet = params[:wallet].to_i
	erb :index
end

post '/' do
	@player = params[:name]
	@wallet = params[:wallet].to_i
	erb :test
end

get '/high_low' do
  @game = HighLow.new 
  $computer_card = @game.computer_card
  $compare_card = @game.compare_card
  @computer_card = $computer_card
  erb :high_low
end

post '/high_low' do
  @result = HighLow.new_compare(params[:computer_card_value], params[:guess], $compare_card.value)
  @compare_card = $compare_card
  @computer_card = $computer_card
  erb :high_low_result
end


get '/russian' do
  @russian = RussianRoulette.new
  erb :russian
end

post '/russian' do
	@results =
  erb :russian_results
end

get '/menu' do
	erb :test
end

get '/wallet' do
	erb :wallet
end
