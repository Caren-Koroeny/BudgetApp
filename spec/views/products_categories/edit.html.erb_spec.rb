require 'rails_helper'

RSpec.describe "products_categories/edit", type: :view do
  let(:products_category) {
    ProductsCategory.create!()
  }

  before(:each) do
    assign(:products_category, products_category)
  end

  it "renders the edit products_category form" do
    render

    assert_select "form[action=?][method=?]", products_category_path(products_category), "post" do
    end
  end
end
