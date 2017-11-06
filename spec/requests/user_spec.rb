require 'rails_helper'

RSpec.describe "home page", :type => :request do
  # use the macro to generate a Devise user
  # login_user

  it "displays the user's username after successful login" do
    user = FactoryBot.create(:user, :email => "a@a.com", :password => "secret123")
    # puts "login_user is: #{login_user.inspect}"
    # puts "other_user is: #{other_user.inspect}"
    # user = subject.current_user
    puts "user is: #{user.inspect}"
    visit "/users/sign_in"
    fill_in "Email", :with => "b@b.com"
    fill_in "Password", :with => "secret456"
    click_button "Log in"
    puts "page is: #{page.inspect}"

    expect(page).to have_selector(".header .email", :text => "b@b.com")
  end
end
