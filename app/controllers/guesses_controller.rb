class GuessesController < ApplicationController
  def update
    @guess = Guess.find_by(card_id: params[:id], round_id: session[:round_id])
    @round = Round.find(session[:round_id])
    @guess.increment!(:count)

    if @guess.check_answer(params[:guess][:answer])
      @guess.correctness = true
      @guess.save
      flash[:correctness] = "You answered previous question correctly!"
      redirect_to round_card_path(@round, @round.draw)
    else
      @guess.correctness = false
      @guess.save
      flash[:correctness] = "You answered previous question incorrectly!"
      redirect_to round_card_path(@round, @round.draw)
    end
  end
end
