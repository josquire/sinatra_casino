class RussianRoulette
  # attr_accessor :player, :wallet
  def self.run_russian
    @bullets = [1, 2, 3, 4, 5, 6]
    @chamber = @bullets.sample
    if @chamber == 6
      return "bang"
    else
      return "click"
    end
  end

end
