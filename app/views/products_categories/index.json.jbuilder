# frozen_string_literal: true

json.array! @products_categories, partial: 'products_categories/products_category', as: :products_category
