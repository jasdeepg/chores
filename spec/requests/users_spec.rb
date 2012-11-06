require 'spec_helper'

describe "Users" do
	before(:each) do
		@user = FactoryGirl.create(:user)
	end

  describe "Home page" do

    it "should have the content 'Chores schedule'" do
      visit '/users/'
      page.should have_selector('h1', :text=>'Chores schedule')
      page.should have_selector('td', :text=>@user.name)
      page.should have_selector('td', :text=>@user.email)
      page.should have_selector('td', :integer=>@user.phone)
      page.should have_selector('td', :text=>@user.chore_done?)
    end
  end
end
