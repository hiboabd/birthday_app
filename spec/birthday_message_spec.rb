require 'spec_helper'

feature 'Birthday message page' do
  scenario 'page shows name and birthday message' do
    visit('/')
    fill_in :name, with: 'Hibo'
    fill_in :birthday, with: Date.today.strftime("%d/%m/%y")
    click_button 'Go!'
    expect(page).to have_content("Happy birthday Hibo")
  end
end
