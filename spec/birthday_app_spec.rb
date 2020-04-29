require 'spec_helper'

feature 'testing homepage' do
  scenario 'visiting homepage and seeing correct content' do
    visit('/')
    expect(page).to have_content "Hello World!"
  end
end
