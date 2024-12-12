require 'rails_helper'

RSpec.feature "UserAuthentication", type: :feature do
  scenario "User can sign up with valid credentials" do
    visit root_path

    click_link "Sign up"
    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "password123"
    fill_in "Password confirmation", with: "password123"
    click_button "Sign up"

    expect(current_path).to eq("/dashboard") # Or wherever you redirect after signup
    expect(page).to have_content("Dashboard")
  end
end
