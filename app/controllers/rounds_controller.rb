class RoundsController < ApplicationController
  def create
    return redirect_to '/login' unless logged_in?
    @deck = Deck.find(params[:deck_id])
    @round = Round.create(user_id: current_user.id, deck_id: @deck.id)
    session[:round_id] = @round.id
    @round.create_guesses
    flash[:correctness] = nil
    redirect_to round_card_path(@round, @round.draw)
  end

  def show
    @round = Round.find(params[:id])
    authorize!(@round.user)
  end
end
