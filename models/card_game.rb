# frozen_string_literal: true

require_relative 'deck'

class CardGame
  attr_reader :cards

  def start
    @cards = Deck.build
  end
end
