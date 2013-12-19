class GameController < ApplicationController
  def test
    #reset the session to the defaults
    if params[:move] == nil
      set_game_beginning
    else
      
      session[session[:player]][:move] = params[:move]
      #switch between players
      if session[:player] == nil or session[:player] == :player1
        session[:player] = :player0
      elsif session[:player] == :player0
        session[:player] = :player1
      end
    end
    if turn_complete
      update_game
      reset_move_input
    end
    push_session
  end
  def resettest
    redirect_to game_test_path
  end
  def update_game
    session[:players].each do |player|
      [:left_hand, :right_hand].each do |hand|
        session[player][hand] << session[player][:move][hand][0].upcase
        session
      end
    end
    
  end
  def cast_spell(spell_name)

  end
  #push the variables in the session to the parameters
  def push_session
    session[:players].each do |player|
      params[player] = Hash.new()
      [:left_hand, :right_hand].each do |hand|
        params[player][hand] = session[player][hand]
      end
    end
  end
  def turn_complete
    session[:player0][:move] != nil and session[:player1][:move] != nil
  end
  def reset_move_input
    session[:player0][:move] = nil
    session[:player1][:move] = nil
    session[:player] = :player0
  end
  #set default state for the beginning of a game
  def set_game_beginning
    reset_session
    params[:move] = Hash.new()
    params[:move][:left_hand] = ""
    params[:move][:right_hand] = ""
    session[:players] = [:player0, :player1]
    session[:player] = :player0
    session[:players].each do |player|
      session[player] = Hash.new()
      session[player][:health] = 15
      [:left_hand, :right_hand].each do |hand|
        session[player][hand] = "B"
      end
    end
    
  end
end
