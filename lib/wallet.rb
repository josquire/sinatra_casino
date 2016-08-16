class Wallet

  attr_accessor :player :wallet

  def initialize(player, wallet)
    $player = player
    $wallet = wallet
end
