require 'rails_helper'

RSpec.feature "UserAuthentication", type: :feature do
  scenario "User can sign up with valid credentials" do
    visit root_path

    click_button "Sign up"
    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "password123"
    fill_in "Password confirmation", with: "password123"
    click_button "Sign up"

    # expect(page).to have_content("Welcome! You have signed up successfully.")
    expect(current_path).to eq("/dashboard") # Or wherever you redirect after signup
  end
end
