module GameHelper
  def hand_move_list(player, hand, support_hand)
    ['>', 'C', 'D','P','W','S','F'] +
	 Sequence.possible_moves(params[player][hand], params[player][support_hand])
    #params[session[:player]][:left_hand]
    #session[:player0][:left_hand]
  end
end
