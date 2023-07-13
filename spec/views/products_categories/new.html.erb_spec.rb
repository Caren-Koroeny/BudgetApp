require 'rails_helper'

RSpec.describe "products_categories/new", type: :view do
  before(:each) do
    assign(:products_category, ProductsCategory.new())
  end

  it "renders new products_category form" do
    render

    assert_select "form[action=?][method=?]", products_categories_path, "post" do
    end
  end
end
