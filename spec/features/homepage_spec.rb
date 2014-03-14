require 'spec_helper'

describe 'Visiting the home page' do
  
  it "displays all of the menu items" do
    visit "/"
    expect(page).to have_content("Channa Masala")
    expect(page).to have_content("Chicken Tikka Masala")
  end

  it "displays the year dynamically" do
    visit "/"

    within("footer") do
      expect(page).to have_content("2014")
    end
  end

  it "displays the pictures" do
    visit "/"

    page.should have_css('img')
    #this is a horribly inaccurate test

  end

  it "displays wednesday prices on wednesday" do

    if Time.new.wednesday?
      expect(page).to have_content("5.35")
    else
      expect(page).to have_content("5.95")
    end

  end

end

#this is testing the html file