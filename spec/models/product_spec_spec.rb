require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    it ("should have a name") do
      product1 = Product.new({
        name:  'Nik',
        description: 'cool cool',
        image: 'apparel1.jpg',
        quantity: 1,
        price: 1,
        category_id: 1
      })
      
      expect(product1.name).to eql("Nik")
      expect(product1.name).not_to be_nil
    end

    it ("should have a price") do
      product1 = Product.new({
        name:  'Nik',
        description: 'cool cool',
        image: 'apparel1.jpg',
        quantity: 1,
        price: 1,
        category_id: 1
      })

      expect(product1.price).to eql(1)
      expect(product1.price).not_to be_nil
    end

    it ("should have a quantity") do
      product1 = Product.new({
        name:  'Nik',
        description: 'cool cool',
        image: 'apparel1.jpg',
        quantity: 10,
        price: 1,
        category_id: 1
      })

      expect(product1.quantity).to eql(10)
      expect(product1.quantity).not_to be_nil
    end

    it ("should have a category") do
      product1 = Product.new({
        name:  'Nik',
        description: 'cool cool',
        image: 'apparel1.jpg',
        quantity: 10,
        price: 1,
        category_id: 1
      })
      
      expect(product1.category_id).to eql(1)
      expect(product1.category_id).not_to be_nil
    end
  end
end
