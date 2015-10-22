class GamesController < ApplicationController
  def rock
    @user_move = params[:the_move]
    comp_array = ["rock","paper","scissors"]
    @computer_move=comp_array.sample
        if @user_move ==@computer_move
      @result = "Tied."
    elsif @user_move=="rock" && @computer_move=="paper"
      @result = "Lose :("
    elsif @user_move=="rock" && @computer_move=="scissors"
      @result = "Win!"
    elsif @user_move=="paper" && @computer_move=="rock"
      @result = "Win!"
    elsif @user_move=="paper" && @computer_move=="scissors"
      @result = "Lose :("
    elsif @user_move=="scissors" && @computer_move=="rock"
      @result = "Lose :("
    elsif @user_move=="scissors" && @computer_move=="paper"
      @result = "Lose :("
    end
  end
end
