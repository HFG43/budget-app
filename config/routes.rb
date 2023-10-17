Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  resources :groups, only: [:new, :create, :index, :show]
  
  root to: "pages#welcome"
end
