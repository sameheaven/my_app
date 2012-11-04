require 'spec_helper'

describe "Static Pages" do
  subject {page}
  
  describe "Home page" do
    before {visit root_path}
    
      it {should have_content('Welcome')}
      it {should have_selector('title', text: full_title(''))}
      it {should_not have_selector('title', text: '| Home')}
  end
  
  describe "Help page" do
      before {visit help_path}
      it {should have_selector('title', text: full_title('Help'))}
      it {should have_content('Help')}
  end
  
    describe "About page" do
      before {visit about_path}
      it {should have_selector('title', text: full_title('About'))}
      it {should have_content('About')}
  end
    describe "Contact page" do
      before {visit contact_path}
      it {should have_selector('title', text: full_title('Contact'))}
      it {should have_content('Contact')}
  end
  
  it "should have the working links on the homepage" do
     visit root_path
     click_link "About"
     page.should have_selector 'title', text: full_title('About')
     click_link "Contact"
     page.should have_selector 'title', text: full_title('Contact')
     click_link "Help"
     page.should have_selector 'title', text: full_title('Help')
     click_link "Home"
     click_link "Sign up"
     page.should have_selector 'title', text: full_title('Sign up')
   end
end
