class RussianRoulette

  attr_accessor :player :wallet

  def initialize
    @game = game
    @bullets = ["1", "2", "3", "4", "5", "6"]
  end

  def russian_roulette
    puts "Welcome to Russian Roulette. The game with the highest of stakes..."
    puts "Press 1 to place your bet and pull the trigger."
    puts "Press 2 to go safely back to the Casino Menu"
    print "-->"
    pull_trigger = gets.chomp
    case pull_trigger
      when "1"
        puts "..."
        sleep(1)
        @chamber = @bullets.sample
        if @bullets.last == @chamber
          puts "BANG!!"
          sleep(1)
          puts " --thud-- "
          sleep(1)
          puts "Hmm. Looks like you died and lost all of your money. So sorry for your misfortune."
          puts ""
          sleep(1)
          puts "Worry not - as a token of good humanity, we will donate $10 to your family \nto help with this inconvenience."
          sleep(2)
          puts "GAME OVER"
          sleep(2)
          exit (0)
        else
          puts "...Click..."
          sleep(1)
          puts "Congratulations #{@player.name}, you won $10!"
 #          @player.wallet.total = @player.wallet.total += 10
          russian_roulette
        end
      when "2"
        # require_relative './casino'
 #        intro = Intro.new

 #        intro.casino_menu(@player)
      else
        puts "Invalid entry, must enter 1 or 2"
        russian_roulette
    end
    # roulette = RussianRoulette.new
    # roulette.russian_roulette
  end
end
end
