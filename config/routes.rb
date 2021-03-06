Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources :articles
	root "pages#home"
	resources :users
	get "login", to: "sessions#new"
	post "login", to: "sessions#create"
	delete "logout", to: "sessions#destroy"
	get "oauth/callback", to: "oauths#callback"
	#resources :admin, only: [:new, :show, :delete]
end
