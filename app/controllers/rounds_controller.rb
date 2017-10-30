class RoundsController < ApplicationController
  def create
    @deck = Deck.find(params[:deck_id])
    @round = Round.new(round_params)
    @round.deck = @deck
    @round.user = current_user
    @round.save

    session[:round_id] = @round.id

  end
end
