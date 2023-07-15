# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'categories/index', type: :system do
  describe 'product index page' do
    before do
      @user = User.create(name: 'Test', email: 'caren@example.com', password: 'password')
      @product = Product.create(author: @user, name: 'test product1', icon: 'https://www.ikea.com/images/grimsloev-series-in-off-white-54161e19bd8d6fb3df81e6c9b84efaae.jpg')
      Product.create(author: @user, name: 'test product2', icon: 'https://www.ikea.com/images/grimsloev-series-in-off-white-54161e19bd8d6fb3df81e6c9b84efaae.jpg')
      visit products_path
      fill_in 'Email', with: @user.email
      fill_in 'Password', with: @user.password
      click_button 'Log in'
    end
    it 'Product list' do
      expect(page).to have_content('test product1')
      expect(page).to have_content('test product2')
    end

    it 'When I click on a product, I am redirected to that product show page.' do
      click_link 'test product1'
      expect(page).to have_current_path(product_path(@product))
    end
  end
end
