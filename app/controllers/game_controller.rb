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
    [:player0, :player1].each do |player|
      [:left_hand, :right_hand].each do |hand|
        session[player][hand] << session[player][:move][hand][0]
      end
    end
    
  end
  #push the variables in the session to the parameters
  def push_session
    [:player0, :player1].each do |player|
      params[player] = Hash.new()
      [:left_hand, :right_hand].each do |hand|
        params[player][hand] = session[player][hand]
      end
    end
  end
  def possible_moves(player, hand)
    gestures = ['D','P','W','S','F']
    spells = []
    Sequence.all.each do |seq|
      gestures.each do |ges|
        if params[player][hand][-seq.sequence.length + 1, seq.sequence.length - 1] + ges  == seq.sequence
          spells << gestures
        end
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
    session[:player] = :player0
    session[:player0] = Hash.new()
    session[:player1] = Hash.new()
    [:player0, :player1].each do |player|
      [:left_hand, :right_hand].each do |hand|
        session[player][hand] = ""
      end
    end
    
  end
end
