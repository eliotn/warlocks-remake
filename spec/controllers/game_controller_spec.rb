require 'spec_helper'

describe GameController do

  describe "testpage" do
    it "returns http success" do
      get 'test'
      response.should be_success
    end
    it "should have initial session variables set properly" do
      get 'test'
      session[:player].should == :player0
      for player in [:player0, :player1]
        session[player][:health].should == 15
        for hand in [:left_hand, :right_hand]
          session[player][hand].should == 'B'
        end
        session[player][:move].should == nil
      end
    end
    it "should have initial parameters set properly" do
      get 'test'
      for hand in [:left_hand, :right_hand]
        controller.params[:move][hand].should == ""
      end
    end
  end

end
