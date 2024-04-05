require 'rails_helper'

RSpec.describe 'Search' do
  
  it 'searches for the members of a specific nation', :vcr do
    visit root_path

    select "Fire Nation", from: "nation"
    click_button "Search For Members"

    expect(current_path).to eq('/search')

      expect(page).to have_css(".Count")


      within(first(".Member")) do
        expect(page).to have_css(".Name")
        expect(page).to have_css(".Ally")
        expect(page).to have_css(".Enemy")
        expect(page).to have_css(".Affiliation")
      end


    
  end

end