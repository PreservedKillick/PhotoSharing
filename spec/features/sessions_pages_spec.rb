require 'spec_helper'

describe Session do

  context "logging in" do
    before :each do
      @test_user = FactoryGirl.create(:user)
    end
    it "allows a user to log in" do
      #click_link 'Log In'
      visit '/sessions/new'
      fill_in 'Username', :with => 'Diana1'
      fill_in 'Password', :with => 'password'
      click_button 'Log In'
      page.should have_content 'logged in'

    end
  end

end
