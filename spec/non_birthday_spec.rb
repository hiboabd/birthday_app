require 'spec_helper'

feature 'Non birthday message page' do
  scenario 'page shows name and birthday due date message' do
    visit('/')
    fill_in :name, with: 'Hibo'
    fill_in :birthday, with: '21/04'
    click_button 'Go!'
    expect(page).to have_content("Your birthday will be in #{Calculate.new.days_left('21/04')} days, Hibo")
  end
end
