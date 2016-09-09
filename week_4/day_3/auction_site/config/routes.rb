Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "site#home"

  get "/users", to: "users#index"
  post "/users", to: "users#create"
  get "/users/new", to: "users#new"
  get "/users/:id", to: "users#show"

  get "users/:user_id/products/new", to: "products#new"

end
