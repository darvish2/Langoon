Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	resources :languagenames
	resources :languagegenres
	get "members/postmember" => "members#postmember"
	get "members/choose" => "members#choose"
	devise_for :members
	resources :posts
	resources :members
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'top#index'
  get "top/about" => "top#about"

end
