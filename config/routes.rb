Rails.application.routes.draw do
  get "login" , to: "sessions#new"
  post "login" , to: "sessions#create"
  get "signup" , to: "users#new"
  resources :users, except: [:new]
  # Defines the root path route ("/")
    root "chatroom#index"
end
