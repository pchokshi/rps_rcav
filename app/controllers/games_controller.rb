class GamesController < ApplicationController
  def rock
    @user_move = "rock"
    comp_array = ["rock","paper","scissors"]
    @computer_move=comp_array.sample
      if @user_move ==@computer_move
        @result = "You tied!"
        @result_label = " btn-warning"
      elsif @computer_move=="paper"
        @result = "You lost!"
        @result_label = " btn-danger"
      elsif @computer_move=="scissors"
        @result = "You win!"
        @result_label = " btn-success"
      end
    @computer_move = @computer_move.capitalize
    render("rock.html.erb")
  end

  def paper
    @user_move = "paper"
    comp_array = ["rock","paper","scissors"]
    @computer_move=comp_array.sample
      if @user_move ==@computer_move
        @result = "You tied!"
        @result_label = " btn-warning"
      elsif @computer_move=="rock"
        @result = "You win!"
        @result_label = " btn-success"
      elsif @computer_move=="scissors"
        @result = "You lost!"
        @result_label = " btn-danger"
      end
    @computer_move = @computer_move.capitalize
    render("paper.html.erb")
  end
  def scissors
    @user_move = "scissors"
    comp_array = ["rock","paper","scissors"]
    @computer_move=comp_array.sample
      if @user_move ==@computer_move
        @result = "You tied!"
        @result_label = " btn-warning"
      elsif @computer_move=="paper"
        @result = "You win!"
        @result_label = " btn-success"
      elsif @computer_move=="rock"
        @result = "You lost!"
        @result_label = " btn-danger"
      end
    @computer_move = @computer_move.capitalize
    render("scissors.html.erb")
  end
end
