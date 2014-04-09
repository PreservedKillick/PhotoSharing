require 'spec_helper'

describe User do

  context "creating" do
    it "creates a new user login" do
      #click_on 'Sign Up'
      visit '/users/new'
      fill_in 'Name', :with => 'Sophie'
      fill_in 'Username', :with => 'Sophie1'
      fill_in 'Email', :with => 'sophie@ex.com'
      fill_in 'Password', :with => 'password'
      fill_in 'Password confirmation', :with => 'password'
      click_button 'Create User'
      page.should have_content 'Your login has been created'
    end
  end

end
