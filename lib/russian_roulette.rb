class RussianRoulette
  # attr_accessor :player, :wallet
<<<<<<< HEAD

  def self.run_russian
    @bullets = [1, 2, 3, 4, 5, 6]
    @chamber = @bullets.sample
    if @chamber == 6
      return "bang"
    else
      return "click"
    end
  end
=======
  def self.run_russian
    @bullets = [1, 2, 3, 4, 5, 6]
    @chamber = @bullets.sample
    if @chamber == 6
      return "bang"
    else
      return "click"
    end
  end
>>>>>>> jo

end
