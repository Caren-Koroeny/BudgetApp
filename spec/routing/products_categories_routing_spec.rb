require "rails_helper"

RSpec.describe ProductsCategoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/products_categories").to route_to("products_categories#index")
    end

    it "routes to #new" do
      expect(get: "/products_categories/new").to route_to("products_categories#new")
    end

    it "routes to #show" do
      expect(get: "/products_categories/1").to route_to("products_categories#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/products_categories/1/edit").to route_to("products_categories#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/products_categories").to route_to("products_categories#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/products_categories/1").to route_to("products_categories#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/products_categories/1").to route_to("products_categories#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/products_categories/1").to route_to("products_categories#destroy", id: "1")
    end
  end
end
