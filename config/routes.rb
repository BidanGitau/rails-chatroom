Rails.application.routes.draw do
  get "login" , to: "sessions#new"
  # Defines the root path route ("/")
    root "chatroom#index"
end
