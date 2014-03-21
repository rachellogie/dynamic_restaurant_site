require 'spec_helper'
require 'timecop'

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

    #Timecop.freeze(Time.local(2014,3,19))
    if Time.new.wednesday?
      expect(page).to have_content("5.36")
    else
      expect(page).to have_content("5.95")
    end

    #Timecop.return

  end


end




#this is testing the html file