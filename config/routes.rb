Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations", sessions: "custom_devise/sessions" }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  root to: "pages#welcome"
  
  resources :groups, only: [:new, :create, :index, :show] do
    resources :expenses, only: [:new, :create, :index, :show]
  end    
end
