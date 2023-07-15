# frozen_string_literal: true

json.extract! products_category, :id, :created_at, :updated_at
json.url products_category_url(products_category, format: :json)
