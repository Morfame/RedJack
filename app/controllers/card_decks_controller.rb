class CardDecksController < ApplicationController
  def index
  end
  
  def new
    vdeck = CardDeck.new
    @vdeck = vdeck.shuffle!
    @dealer = User.new
    @player = User.new
    # Deals hand to Dealer
    vTmp = @vdeck.draw!
    @dealer.add(Card.new(vTmp.suit, vTmp.rank))
    vTmp = @vdeck.draw!
    @dealer.add(Card.new(vTmp.suit, vTmp.rank))
    
    # Deals hand to Player
    vTmp = @vdeck.draw!
    @player.add(Card.new(vTmp.suit, vTmp.rank))
    vTmp = @vdeck.draw!
    @player.add(Card.new(vTmp.suit, vTmp.rank))
  end

  def show
  end
    
end

