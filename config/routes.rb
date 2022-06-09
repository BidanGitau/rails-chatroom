Rails.application.routes.draw do
  get "login" , to: "sessions#new"
  post "login" , to: "sessions#create"
  get "signup" , to: "users#new"
  delete "logout" , to: "sessions#destroy"
  resources :users, except: [:new]
  post "message" ,to: "messages#create"
  # Defines the root path route ("/")
    root "chatroom#index"
    mount ActionCable.server,at: '/cable'
end
