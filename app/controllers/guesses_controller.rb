class GuessesController < ApplicationController
  def update
    @guess = Guess.find_by(card_id: params[:id], round_id: session[:round_id])
    @round = Round.find(session[:round_id])
    @guess.increment!(:count)
    @guesses_array = @round.guesses.where(correctness: false)

    if @guess.check_answer(params[:guess][:answer])
      @guess.correctness = true
      @guess.save
      flash[:correctness] = "You answered previous question correctly!"
      if @guesses_array.length == 0
        redirect_to round_path(@round)
      else
        redirect_to round_card_path(@round, @round.draw)
      end
    else
      @guess.correctness = false
      @guess.save
      flash[:correctness] = "You answered previous question incorrectly!"
      redirect_to round_card_path(@round, @round.draw)
    end
  end
end
