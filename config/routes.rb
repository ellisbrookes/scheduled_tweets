Rails.application.routes.draw do
  
  get "about", to: "about#index"

  get "/password", to: "passwords#edit", as: :edit_password
  patch "/password", to: "passwords#update" 


  get "/sign_up", to: "registrations#new"
  post "/sign_up", to: "registrations#create"

  get "/sign_in", to: "sessions#new"
  post "/sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destory"

  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"

  root to: "main#index"
end
