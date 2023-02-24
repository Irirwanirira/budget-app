require 'rails_helper'

RSpec.feature 'start page', type: :feature do
  background do
    visit root_path
  end

  scenario 'display start screen' do
    expect(page).to have_content('E-neza')
  end

  scenario 'display start screen' do
    expect(page).to have_content('Log in')
  end

  scenario 'display start screen' do
    expect(page).to have_content('Sign up')
  end
end