require 'rails_helper'

RSpec.describe User, type: :model do
  before { @user = build(:user) }

  it "should have a valid email" do
    @user.email = "asdfasdf"
    expect(@user).to_not be_valid
  end

  it "should have an email" do
    @user.email = ""
    expect(@user).to_not be_valid
  end

  it "should have a password" do
    @user.password = ""
    @user.password_confirmation = ""
    expect(@user).to_not be_valid
  end

  it "should match the password confirmation" do
    @user.password_confirmation = "differentPassword"
    expect(@user).to_not be_valid
  end

  it "should have a first name" do
    @user.first_name = ""
    expect(@user).to_not be_valid
  end

  it "should passed with correct user" do
    expect(@user).to be_valid
  end

end
