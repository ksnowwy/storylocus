require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Storylocus'" do
      visit '/static_pages/home'
      page.should have_content('Storylocus')
    end
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Storylocus | Home")
    end
  end
  describe "About page" do
    it "should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_content('About')
     end
  end
  it "should have the right title" do
    visit '/static_pages/about'
    page.should have_selector('title',
                      :text => "Storylocus | About")
  end
end