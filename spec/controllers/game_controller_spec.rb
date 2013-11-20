require 'spec_helper'

describe GameController do

  describe "GET 'test'" do
    it "returns http success" do
      get 'test'
      response.should be_success
    end
  end

end
