class Card < ApplicationRecord
end

Class PlayCard
  Suits = %w(♠︎ ♣︎ ♥︎ ♦︎)
  Ranks = %w(2 3 4 5 6 7 8 9 10 J Q K A)

  Class Deck
    attr_reader :cards

    def def initialize(n=1)
      @cards=[]
      Suits.cycle(n) do |s|
        Ranks.cycle(1) do |r|
          @cards << "#(r) of #(s)"          
        end
      end
    end
  end
end
