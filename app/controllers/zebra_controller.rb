class ZebraController < ApplicationController
  def homepage
    render({:template=> "game_templates/homepage"})
  end
  def giraffe
    @random_move = ["rock", "paper", "scissors"].sample
    if @random_move == "rock"
      @outcome = "We tied!"
    elsif @random_move == "paper"
      @outcome = "We lost!"
    elsif @random_move == "scissors"
      @outcome = "We won!"
    end
    render({:template=> "game_templates/play_rock"})
  end
  def elephant
     @random_move = ["rock", "paper", "scissors"].sample
     if @random_move == "rock"
      @outcome = "We won!"
    elsif @random_move == "paper"
      @outcome = "We tied!"
    elsif @random_move == "scissors"
      @outcome = "We lost!"
    end
      render({:template=> "game_templates/play_paper"})
  end
  def lion
    @random_move = ["rock", "paper", "scissors"].sample
    if @random_move == "rock"
      @outcome = "We lost!"
    elsif @random_move == "paper"
      @outcome = "We won!"
    elsif @random_move == "scissors"
      @outcome = "We tied!"
    end
    render({:template=> "game_templates/play_scissors"})
 end
end
