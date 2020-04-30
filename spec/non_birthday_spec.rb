require 'spec_helper'

feature 'Non birthday message page' do
  scenario 'page shows name and birthday due date message' do
    visit('/')
    fill_in :name, with: 'Hibo'
    fill_in :birthday, with: '26/03/1997'
    click_button 'Go!'
    expect(page).to have_content("Your birthday will be in 10 days, Hibo")
  end
end
