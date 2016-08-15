require_relative 'card_deck'
# a card needs to be drawn from an array
class HighLow
  # attr_accessor :player, :game
  # def initialize(player, game)
  def initialize
    # @game = game
    # @player = player
    puts 'Welcome to High Low'
    puts 'Type Q if you would like to leave the game or C to continue.'
    quit = gets.strip.downcase
    if quit == 'q'
      @game.menu
    else
      first_bet
    end

  end

  def first_bet
    puts "How much would you like to bet of your #{@player.wallet.amount} amount?"
    @bet_amount = gets.to_i
    start_game
  end

  def start_game
    puts 'Your first card is...'
    @deck = Deck.new
    # puts @deck
    # require_relative 'deck_cards.rb'
    @first_card = @deck.return_a_card
    @second_card = @deck.return_a_card
    puts "#{@first_card.find_rank} of #{@first_card.suit}"
    # binding.pry
    compare_method
  end

  def compare_method
    puts "Is the next card going to be High or Low?"
    choice = gets.strip.downcase

    case choice
      when 'high'
        high
      when 'low'
        low
      else
        puts 'Please make a valid selection'
    end
  end

  def second
    puts "The second card is #{@second_card.find_rank} of #{@second_card.suit}"

  end

  def high
    second
    # @first_card = first.value
    # @second_card = second.value
    if @first_card.value < @second_card.value
      @player.wallet.amount += @bet_amount
      puts "You Win!!".colorize(:green)
    else
      @player.wallet.amount -= @bet_amount
      puts "You Lose!".colorize(:red)
    end
    play_again
  end

  def low
    second
    # @first_card = first.value
    # @second_card = second.value
    if @first_card.value > @second_card.value
      @player.wallet.amount += @bet_amount
      puts "You Win!!".colorize(:green)
    else
      @player.wallet.amount -= @bet_amount
      puts "You Lose!".colorize(:red)
    end
    play_again
  end

  def play_again
    puts "Would you like to play again?"
    input = gets.strip.downcase
    if input == 'yes'
      first_bet
    else
      GameMenu.new#(@player)
    end
  end
end