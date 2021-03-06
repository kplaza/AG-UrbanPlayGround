Rails.application.routes.draw do
  resources :locations
  devise_for :users
  resources :events
  resources :kids

  get '/' => 'welcome#index'

  get "/users/:id" =>  "users#show", as: "user"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
