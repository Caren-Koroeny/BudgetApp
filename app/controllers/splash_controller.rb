# frozen_string_literal: true

# app/controllers/splash_controller.rb
class SplashController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]
  def index
    return unless user_signed_in?

    redirect_to products_path
  end
end
