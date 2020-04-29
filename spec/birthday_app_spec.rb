require 'spec_helper'

feature 'testing homepage' do
  scenario 'visiting homepage and seeing correct content' do
    visit('/')
    expect(page).to have_content "Hello There!"
    expect(page).to have_content "What is your name?"
    expect(page).to have_content "And what is your birthday?"
  end
end
