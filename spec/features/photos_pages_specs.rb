require 'spec_helper'

describe Photo do

  it "can be created by a user" do
    log_in
    click_button "Add Photo"
    attach_file('Image', '/desktop/photo (1).jpg')
    click_button "Create Photo"
    page.should have_content "New photo uploaded"
  end

end
