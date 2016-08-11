require "test_helper"

class CansignupsigninTest < Capybara::Rails::TestCase
  test "Users can sign in after signing up" do
    visit root_path
    assert_content "Sign up"

    fill_in "user[name]", with: "testing"
    fill_in "user[email]", with: "test@test.com"
    fill_in "user[password]", with: "testing"
    fill_in "user[password_confirmation]", with: "testing"
    click_button "Sign up"
    assert_content "Companies & Hiring Managers"
    click_link "Sign Out"
    save_and_open_page
    within("div.sign-in") do
      fill_in "Email", with: "test@test.com"
      fill_in "Password", with: "testing"
      click_button "Sign in"
    end
    assert_content "Companies & Hiring Managers"
  end
end
