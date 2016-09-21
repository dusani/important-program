Rails.application.routes.draw do
devise_for :users
root "users#home"
resources :users, only: [:show]
post '/sandwiches/:sandwich_id/ingredients/add', to: "sandwiches#add_ingredient" 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :sandwiches, only:[:index,:show], controller: "sandwich_views"
  scope "/api" do 
	resources :sandwiches, except: [:new, :edit]
	resources :ingredients, except: [:new, :edit] 
  	post "/sandwiches/:sandwich_id/ingredients/add" => 'sandwiches#add_ingredient'
  end

end
