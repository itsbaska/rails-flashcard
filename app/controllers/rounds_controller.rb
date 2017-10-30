class RoundsController < ApplicationController
  def create
    @deck = Deck.find(params[:deck_id])
    @round = Round.create(user_id: current_user.id, deck_id: @deck.id)
    session[:round_id] = @round.id
    @round.create_guesses
    redirect_to round_card_path(@round, @round.draw)
  end

  def show
    @round = Round.find(params[:id])
  end
end
