Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "homes#top"

  resources :post_images, only: [:new, :index, :show]
  get 'homes/about', to: 'homes#about', as: :about
end
