require 'rails_helper'

RSpec.describe Product, type: :model do

  it "new Product with columns present" do 
    product = Product.new
    expect(product).to be_present
  end

  it "new Product with filled fields is valid" do 
    product = Product.new(
      name: "name", 
      price: 10, 
      quantity: 10, 
      category: Category.new
    )
    expect(product).to be_valid
  end
  
end
