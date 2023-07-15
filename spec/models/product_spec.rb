# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:user) { User.create(name: 'Caren', email: 'caren@gmail.com', password: 'test123') }
  let(:product) { Product.new(author: user, name: 'test product', icon: 'https://www.ikea.com/images/grimsloev-series-in-off-white-54161e19bd8d6fb3df81e6c9b84efaae.jpg') }

  before { product.save }

  describe 'validations' do
    it 'requires a name' do
      product.name = nil
      expect(product).to_not be_valid
    end

    it 'requires a non-empty name' do
      product.name = '   '
      expect(product).to_not be_valid
    end

    it 'requires an icon' do
      product.icon = nil
      expect(product).to_not be_valid
    end

    it 'requires a non-empty icon' do
      product.icon = '   '
      expect(product).to_not be_valid
    end
  end
end
