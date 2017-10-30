class CardsController < ApplicationController
  def show
    @deck = Deck.find(params[:deck_id])
    @card = @decks.cards.find(params[:id])
  end
end
