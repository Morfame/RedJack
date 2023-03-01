Rails.application.routes.draw do
  get 'welcome/index'
  resources :rooms
  resources :banks
  resources :cards
  resources :players
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end
