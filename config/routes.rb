Rails.application.routes.draw do
  resources :comments, only: [:create]
  resources :cards, only: [:create,:destroy,:index]
  resources :users, only: [:create]
  post "/login", to: "users#login"
  get "/login", to: "users#login"
  get "/signup", to: "users#signup"
  get "/persist", to: 'users#persist'
  # verb "url", to: "controllerName#instanceMethodName"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
