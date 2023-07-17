Rails.application.routes.draw do
  devise_for :users

  root 'splash#index'
  resources :products, only: %i[index show new create] do
    resources :categories, only: %i[new create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
