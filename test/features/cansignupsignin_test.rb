require "test_helper"
db:environment:set RAILS_ENV=test

class CansignupsigninTest < Capybara::Rails::TestCase
  test "Users can sign in after signing up" do
    visit root_path
    fill_in "Name", with: "testing"
    fill_in "Email", with: "test@test.com"
    fill_in "Password", with: "testing"
    fill_in "Password confirmation", with: "testing"
    click_button "Sign up"
    assert_content "Companies & Hiring Managers"
    click_link "Sign Out"
    click_link "Sign in"
    fill_in "Email", with: "testing"
    fill_in "Password", with: "testing"
    click_button "Sign in"
    assert_content "Companies & Hiring Managers"
  end
end
