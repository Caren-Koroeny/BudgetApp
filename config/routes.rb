Rails.application.routes.draw do

  devise_for :users

  root "splash#index"
  resources :products, only: [:index, :show, :new, :create] do
    resources :categories, only: [:new, :create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
