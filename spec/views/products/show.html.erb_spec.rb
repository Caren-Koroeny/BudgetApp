require 'rails_helper'

RSpec.describe 'products/show', type: :system do
  describe 'product show page' do
    before do
      @user = User.create(name: 'Test', email: 'test2@example.com', password: 'password')
      @product = Product.create(author: @user, name: 'test product1', icon: 'https://www.ikea.com/images/grimsloev-series-in-off-white-54161e19bd8d6fb3df81e6c9b84efaae.jpg')
      @category = Category.new(author: @user, name: 'test category', amount: 50, products: [@product])
      @category.save
      visit product_path(@product)
      fill_in 'Email', with: @user.email
      fill_in 'Password', with: @user.password
      click_button 'Log in'
    end
    it 'Product name' do
      expect(page).to have_content('test product1')
    end
    it 'Product Icon' do
      expect(page).to have_css('img[src="https://www.ikea.com/images/grimsloev-series-in-off-white-54161e19bd8d6fb3df81e6c9b84efaae.jpg"]')
    end
    it 'Product total' do
      expect(page).to have_content('$50.0')
    end
  end
end
