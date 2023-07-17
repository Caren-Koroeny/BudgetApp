require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it 'requires a name' do
      user = User.new(email: 'caren@gmail.com', password: 'test123')
      expect(user).to_not be_valid
    end

    it 'requires a non-empty name' do
      user = User.new(name: '   ', email: 'caren2@gmail.com', password: 'test123')
      expect(user).to_not be_valid
    end

    it 'requires an email' do
      user = User.new(name: 'Caren', password: 'test123')
      expect(user).to_not be_valid
    end

    it 'requires a unique email' do
      User.create(name: 'John', email: 'caren@example.com', password: 'password123')
      new_user = User.new(name: 'Caren', email: 'caren@example.com', password: 'test123')
      expect(new_user).to_not be_valid
    end

    it 'is valid with valid attributes' do
      user = User.new(name: 'Caren', email: 'caren2@gmail.com', password: 'test123')
      expect(user).to be_valid
    end
  end

  describe 'associations' do
    it 'has many products' do
      user = User.new(name: 'Caren', email: 'caren@gmail.com', password: 'test123')
      expect(user.products).to be_empty

      product = Product.create(name: 'Test Product',
                               icon: 'https://www.ikea.com/images/grimsloev-series-in-off-white-54161e19bd8d6fb3df81e6c9b84efaae.jpg',
                               author: user)
      expect(user.products).to include(product)
    end
  end
end
