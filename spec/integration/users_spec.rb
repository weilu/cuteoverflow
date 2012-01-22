require 'spec_helper'

describe "/" do
  it "start following a user" do
    visit root_path
    fill_in "User ID", with: "429288"
    VCR.use_cassette('synopsis') do
      click_button "Search"
    end

    page.should have_content("wei")
    page.should have_content("Reputation: ")

    #click_button "Follow"
  end
end