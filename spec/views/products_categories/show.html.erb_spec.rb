require 'rails_helper'

RSpec.describe "products_categories/show", type: :view do
  before(:each) do
    assign(:products_category, ProductsCategory.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
