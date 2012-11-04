require 'spec_helper'

describe "Static Pages" do
  
  describe "Home page" do
    
    it "should have the content 'Hello world'" do
      
      visit '/static_pages/home'
      page.should have_content('Hello world')
    end
  end
  
  describe "Help page" do
        
    it "should have the content 'Help'" do
        
      visit '/static_pages/help'
      page.should have_content('Help')
    end
  end
  
    describe "About page" do
        
    it "should have the content 'About'" do
        
      visit '/static_pages/about'
      page.should have_content('About')
    end
  end
    describe "Contact page" do
        
    it "should have the content 'Contact'" do
        
      visit '/static_pages/contact'
      page.should have_content('Contact')
    end
  end
  
end
