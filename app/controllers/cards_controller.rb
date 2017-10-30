class CardsController < ApplicationController
  def show
    @round = Round.find(params[:round_id])
    @deck = @round.deck
    @card = @deck.cards.find(params[:id])
  end
end
