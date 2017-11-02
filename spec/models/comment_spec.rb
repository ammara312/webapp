require "rails_helper"
 
 describe Comment do
 
	 it "is not valid a comment without rating" do 
	   expect(Comment.new(body: "awesome food")).not_to be_valid
	 end
 end