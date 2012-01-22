require 'spec_helper'

describe ApplicationController do

  render_views

  describe 'home' do
    it "redirect to application/home and accept user id as input" do
      get :home
      response.body.should have_css("input[type=search]")
      response.body.should have_css("input[type=submit]")
    end
  end

end