require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App"}

  describe "Home page" do
  	before(:each) do
  	  visit '/static_pages/home'
  	end
    it "should have the content 'Home'" do
      page.should have_selector('h1', :text => 'Home')
    end
    it "should have the base title" do
      page.should have_selector('title', :text => "#{base_title}")
    end
    it "should not have a custom page title" do
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "Help page" do
  	before(:each) do
  	  visit '/static_pages/help'
  	end
  	it "should have the content 'Help'" do
      page.should have_selector('h1', :text => 'Help')
  	end
    it "should have the right title" do
      page.should have_selector('title', :text => "#{base_title} | Help")
    end
  end

  describe "About page" do
  	before(:each) do
  	  visit '/static_pages/about'
  	end
  	it "should have the content 'About us'" do
      page.should have_selector('h1', :text => 'About Us')
  	end
    it "should have the right title" do
      page.should have_selector('title', :text => "#{base_title} | About Us")
    end
  end

  describe "Contact page" do
    before(:each) do
      visit '/static_pages/contact'
    end
    it "should have the content 'Contact'" do
      page.should have_selector('h1', :text => 'Contact')
    end
    it "should have the right title" do
      page.should have_selector('title', :text => "#{base_title} | Contact")
    end
  end
end
