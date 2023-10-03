require 'rails_helper'

RSpec.describe Product, type: :model do
  before(:all) do
    @product = Product.create(name: "Rspec testcases")
  end

  it 'checks that a Product  can be created' do
    expect(@product).to be_valid
  end
end
