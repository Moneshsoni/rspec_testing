require 'rails_helper'

RSpec.describe Product, type: :model do
  before(:each) do
    @product = Product.create(name:"Rspec testcases")
    # expect(Product.find_by_name("Rspec testcases")).to eq(@product)
  end

  it 'checks that a Product  can be created' do
    expect(@product).to be_valid
    
  end

  it 'checks that a product can be read' do
    expect(Product.find_by_name("Rspec testcases")).to eq(@product)
  end

  it 'checks that a Product can be updated' do
    @product.update(:name => "updated Rspec testcases")
    expect(Product.find_by_name("updated Rspec testcases")).to eq(@product)
  end

  it 'checks the product coutn' do
    expect(Product.count).to eq(1)
  end

  it 'Check that record is deleted or not' do
    @product.destroy
    expect(Product.count).to eq(0)
  end

end
