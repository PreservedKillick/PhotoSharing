require 'spec_helper'

describe User do

  it {should validate_presence_of :name}
  it "is invalid wtihout a name" do
    FactoryGirl.build(:user, name: nil).should_not be_valid
  end
  it {should validate_presence_of :username}
  it {should have_many :photos}
  #it {should validate_uniqueness_of :username}
  #it {should validate_uniqueness_of :email}

  it { should have_secure_password }
  it "has a valid factory" do
    FactoryGirl.create(:faker_user).should be_valid
  end

end
