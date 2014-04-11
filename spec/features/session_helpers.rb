
module Features
  module SessionHelpers
    def sign_up_with(name, username, email, password, password_confirmation)
      visit new_user_path
      fill_in 'Name', :with => 'Sophie'
      fill_in 'Username', :with => 'Sophie1'
      fill_in 'Email', :with => 'sophie@ex.com'
      fill_in 'Password', :with => 'password'
      fill_in 'Password confirmation', :with => 'password'
      click_button 'Create User'
    end

    def log_in
      @test_user = FactoryGirl.create(:user)
      visit new_session_path
      fill_in 'Username', :with => 'Diana1'
      fill_in 'Password', :with => 'password'
      click_button 'Log In'
    end
  end
end
