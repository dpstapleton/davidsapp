require 'rails_helper'

describe Product do

	before do
  	@product = Product.create!(name: "Pepe Jeans")
  	@user = User.create!(first_name: "Terry", last_name: "Test", email: "test1@test.com", password: "test1234")
  	@product.comments.create!(rating: 3, user: @user, body: "Real Nice Jeans")
  	@product.comments.create!(rating: 1, user: @user, body: "Not Nice Jeans")
  	@product.comments.create!(rating: 5, user: @user, body: "Excellent Nice Jeans")

end

it "returns the average rating of all comments" do

	"Expect the product's average rating to equal 3" 

end

it "shouldn't create a product becasue there is a missing name" do
		expect(Product.new(color: "white")).to_not be_valid
	end

end