require 'sinatra'
require 'pry'
require_relative 'lib/hi_low'
require_relative 'lib/russian_roulette'

get '/' do
	# form to create a new player
	# @player - show a game menu
	# that game menu is links to each
	# game route eg. /high_low, /craps
	erb :index
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