require 'spec_helper'

describe StackUsersController do

  describe "GET show" do
    let(:user) do
      VCR.use_cassette('synopsis') do
        StackUser.from_remote_user_id 429288
      end
    end

    before { user }

    it "assigns user" do
      get :show, id: 429288
      assigns[:user].should_not be_nil
    end
  end

end