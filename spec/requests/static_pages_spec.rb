require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
  	before(:each) do
  	  visit '/static_pages/home'
  	end
    it "should have the content 'Sample App'" do
      page.should have_content('Sample App')
    end
    it "should have the right title" do
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "Help page" do
  	before(:each) do
  	  visit '/static_pages/help'
  	end
  	it "should have the content 'Help'" do
  	  page.should have_content('Help')
  	end
    it "should have the right title" do
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do
  	before(:each) do
  	  visit '/static_pages/about'
  	end
  	it "should have the content 'About us'" do
  	  page.should have_content('About Us')
  	end
    it "should have the right title" do
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end
end
