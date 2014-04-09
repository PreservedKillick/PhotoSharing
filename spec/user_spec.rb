require 'spec_helper'

describe User do

  it {should validate_presence_of :name}
  it {should validate_presence_of :username}
  #it {should validate_uniqueness_of :username}
  it {should have_many :sessions}
  #it {should validate_uniqueness_of :email}

end