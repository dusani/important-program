Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "site#home"

  resources :concerts do
  	resources :comments
  end
  
end
