require 'rails_helper'

RSpec.feature "Applications", type: :feature do
  scenario "User can create an applications" do
    user = create(:user)
    sign_in user
    visit "/dashboard"
    click_link "Add Job"
    expect(current_path).to eq(new_application_path)
    
    fill_in "application_company_name", with: "Tech Corp"
    fill_in "application_position_name", with: "Software Engineer"
    fill_in "application_job_posting_link", with: "https://techcorp.com/job/software-engineer"

    # Select from dropdown
    select "Applied", from: "application_application_status"

    # Fill in date fields
    fill_in "application_date_applied", with: "2024-12-10"
    fill_in "application_interview_date", with: "2024-12-15"

    # Fill in time fields
    fill_in "application_interview_time", with: "14:30"

    # Fill in recruiter name
    fill_in "application_recruiter_name", with: "John Doe"

    # Fill in salary range
    fill_in "application_min_salary", with: "60000"
    fill_in "application_max_salary", with: "80000"

    # Submit the form
    click_button "Submit"
    expect(current_path).to eq("/dashboard")
    expect(page).to have_content("Tech Corp")
  end


    scenario "Sad path for user can create an applications" do
    user = create(:user)
    sign_in user
    visit "/dashboard"
    click_link "Add Job"
    save_and_open_page
    expect(current_path).to eq(new_application_path)
    
    fill_in "application_company_name", with: "Tech Corp"
    fill_in "application_position_name", with: "Software Engineer"
    # fill_in "application_job_posting_link", with: "https://techcorp.com/job/software-engineer"

    # Select from dropdown
    select "Applied", from: "application_application_status"

    # Fill in date fields
    fill_in "application_date_applied", with: "2024-12-10"
    fill_in "application_interview_date", with: "2024-12-15"

    # Fill in time fields
    fill_in "application_interview_time", with: "14:30"

    # Fill in recruiter name
    fill_in "application_recruiter_name", with: "John Doe"

    # Fill in salary range
    fill_in "application_min_salary", with: "60000"
    fill_in "application_max_salary", with: "80000"

    # Submit the form
    click_button "Submit"
    expect(current_path).to eq(new_application_path)
  end

  scenario "created applications are visible on the dashboard" do 
    user = create(:user)
    sign_in user
    application = create(:application, user: user)
  end 
end
