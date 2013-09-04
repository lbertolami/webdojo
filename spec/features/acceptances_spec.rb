require 'spec_helper'

describe "Acceptance Tests" do

  describe "Open Home Page" do
    it "should display title" do      
      visit "/"
      expect(page).to have_content "Tuitts"
    end
  end

  describe "Tweets", :js => true do
  	before :each do
  	 # create 5 random tweets
  	 FactoryGirl.create_list(:tweet, 5)
  	end	  	

  	it "should list tweets on the page" do
  		pending "needs implementation" #remove to run test
  		visit "/"
  		(1..5).each do |i|
  			expect(page).to have_content "This is tuitt number #{i}"
  		end
  	end

  	it "should be able to add tweet", :js => true do
  		pending "needs implementation" #remove to run test
  	 	visit "/"
  	 	fill_in("tuitt", :with => 'This is a tuitt!')
  	 	click_button("Tweet")
  	 	expect(page).to have_content "This is a tuitt!"
  	end
  end
  
end