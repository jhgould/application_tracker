require 'rails_helper'

RSpec.feature "Applications", type: :feature do
  scenario "User can create an applications" do
    sign_in @user
    binding.pry
  end
end
