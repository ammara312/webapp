require 'rails_helper'

describe Product do
	before do
		@product =FactoryBot.create(:product)
		@user = FactoryBot.create(:user)
		#we can create associated models by simply using dot notation
	  @product.comments.create!(rating: 1, user: @user, body: "not good at all!")
	  @product.comments.create!(rating: 3, user: @user, body: "it was OK!")
	  @product.comments.create!(rating: 5, user: @user, body: "Great food i ever had !")
	end

	it "returns the average rating of all comments" do
		expect(@product.average_rating).to eq 3
	end

	it "is not valid without a name" do
	  expect(Product.new(description:"Nice curry")).not_to be_valid
	end

  context "when the product has no name" do
	  product = FactoryBot.build(:product)
	  product.name = ""
	  
	  it "should not be valid" do
	    expect(product).not_to be_valid
  	end
	end

  context "when the product has no description" do
    product = FactoryBot.build(:product)
    product.description = ""

    it "should not be valid" do
      expect(product).not_to be_valid
    end
  end

  context "when the product has no image" do
    product = FactoryBot.build(:product)
    product.image_url = ""

    it "should not be valid" do
      expect(product).not_to be_valid
    end
  end

  context "when the product has no price" do
    product = FactoryBot.build(:product)
    product.price = ""

    it "should not be valid" do
      expect(product).not_to be_valid
    end
  end
end

