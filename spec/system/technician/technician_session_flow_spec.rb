require 'rails_helper'

describe "Technician", type: :system do
  let(:technician) { FactoryBot.create(:technician) }

  before do
    visit root_path
  end

  scenario "logs in" do
    click_link 'login-technician'
    fill_in 'Email', with: technician.email
    fill_in 'Password', with: technician.password
    
    click_button 'Log in'

    expect(page).to have_text("Welcome, #{technician.first_name}")
    expect(page).to_not have_text("Log in")
    expect(page).to have_selector('a#log-out')
  end
end
