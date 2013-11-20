module GameHelper
  def hand_move_list(hand)
    ['>', 'C', 'D','P','W','S','F'] +
	 Sequence.possible_moves(params[:player0][hand])
    #params[session[:player]][:left_hand]
    #session[:player0][:left_hand]
  end
end
