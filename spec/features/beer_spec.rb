require 'spec_helper'

feature 'Create a list of favorite beers' do
  scenario 'create a list of beers' do
    visit '/'
    fill_in 'name', with: 'Sawtooth'
    fill_in 'kind', with: 'ESB'
    fill_in 'description', with: 'Amber flavored'
    click_on 'Add'
    expect(page).to have_content 'Sawtooth'
  end

  scenario 'update a list of beers' do
    visit '/'
    fill_in 'name', with: 'High Life'
    fill_in 'kind', with: 'Lager'
    fill_in 'description', with: 'Good but cheap'
    click_on 'Add'
    click_on 'Update'
    fill_in 'name', with: 'High Life'
    fill_in 'kind', with: 'Lager'
    fill_in 'description', with: 'Excellent low budget'
    click_on 'Edit'
    expect(page).to have_content 'Excellent low budget'
  end
end