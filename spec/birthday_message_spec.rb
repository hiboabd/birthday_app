require 'spec_helper'

feature 'Birthday message page' do
  scenario 'clicking submit takes you to next page' do
    visit('/')
    click_button 'Submit'
    expect(page).to have_content("Placeholder birthday message")
  end
end
