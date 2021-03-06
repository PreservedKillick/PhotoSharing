require 'spec_helper'

describe User do

  it "creates a new user login" do
    #click_on 'Sign Up'
    # visit '/users/new'
    # fill_in 'Name', :with => 'Sophie'
    # fill_in 'Username', :with => 'Sophie1'
    # fill_in 'Email', :with => 'sophie@ex.com'
    # fill_in 'Password', :with => 'password'
    # fill_in 'Password confirmation', :with => 'password'
    # click_button 'Create User'
    sign_up_with(name, username, email, password, password_confirmation)
    page.should have_content 'Your login has been created'
  end

  it "displays errors if you don't enter all the requested information when signing up" do
    visit new_user_path
    fill_in 'Name', :with => 'Maturin'
    fill_in 'Username', :with => 'maturin'
    fill_in 'Password', :with => 'password'
    fill_in 'Password confirmation', :with => 'password'
    click_button 'Create User'
    page.should have_content 'Please fix the following'
  end

  it "allows a user to log in" do
    @test_user = FactoryGirl.create(:user)
    #click_link 'Log In'
    visit '/sessions/new'
    fill_in 'Username', :with => 'Diana1'
    fill_in 'Password', :with => 'password'
    click_button 'Log In'
    page.should have_content 'logged in'
  end

  it "allows a user to edit his/her/their profile" do
    @test_user = FactoryGirl.create(:user)
    visit '/sessions/new'
    fill_in 'Username', :with => 'Diana1'
    fill_in 'Password', :with => 'password'
    click_button 'Log In'
    visit edit_user_path(@test_user)
    fill_in 'Name', :with => 'Jemmy Ducks'
    fill_in 'Username', :with => 'JDuck'
    fill_in 'Email', :with => 'jd@xe.com'
    fill_in 'Password', :with => 'password'
    fill_in 'Password confirmation', :with => 'password'
    click_button 'Update User'
    page.should have_content 'Profile Updated'
  end

end
