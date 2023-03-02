class CardDeck
  def initialize(cards = build_cards)
    @cards = cards
  end

  def each(&block)
    @cards.each(&block)
  end

  def size
    @cards.size
  end

  def shuffle!
    @cards.shuffle!
    self
  end

  def draw!
    @cards.shift
  end

  def cut!(num_of_cards)
    [
      CardDeck.new(@cards[0, num_of_cards]),
      CardDeck.new(@cards[num_of_cards, @cards.size])
    ]
  end

  def +(other_deck)
    cards_from_other = []
    other_deck.each do |card|
      cards_from_other << card
    end

    CardDeck.new(@cards + cards_from_other)
  end

  def ==(other_deck)
    cards_from_other_deck = []
    other_deck.each do |card|
      cards_from_other_deck << card
    end

    @cards == cards_from_other_deck
  end

  private

  def build_cards
    [].tap do |cards|
      %w(♠︎ ♣︎ ♥︎ ♦︎).each do |suit|
        %w(A 2 3 4 5 6 7 8 9 10 J Q K).each do |rank|
          cards << Card.new(suit, rank)
        end
      end
      #2.times { cards << Card.new("*", "Joker") }
    end
  end
end

class Card
  attr_reader :suit, :rank

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end

  def ==(other)
    suit == other.suit && rank == other.rank
  end
end



class Card
  attr_accessor :rank, :suit

  def initialize(r, s)
    @rank, @suit = r, s
  end
end

class User
  attr_accessor :cards, :suit

  def initialize
    @cards =  Array.new
  end

  def add(b)
    @cards << b
  end
end

