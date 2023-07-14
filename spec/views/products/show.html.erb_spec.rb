require 'rails_helper'

RSpec.describe "products/show", type: :system do
  describe 'product show page' do
    before do
      @user = User.create(name: 'Test', email: 'test2@example.com', password: 'password')
      @product = Product.create(author: @user, name: 'test product1', icon: 'https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_square.jpg')
      @category =Category.new(author: @user, name: 'test category', amount: 50, products: [@product])
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
      expect(page).to have_css('img[src="https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_square.jpg"]')
    end
    it 'Product total' do
      expect(page).to have_content('$50.0')
    end
  end
end