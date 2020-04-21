Rails.application.routes.draw do
	mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	devise_for :members

	get "members/postmember" => "members#postmember"
	get "members/choose" => "members#choose"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'top#index'

get "members/show" => "members#show"

  get "top/about" => "top#about"

  get "languagenames/contents" => "languagenames#contents"

  get "languagenames/japanese" => "languagenames#japanese"

  get "posts/english" => "posts#english"

  resources :posts
  resources :members
  resources :languagenames



  resources :members do
  resources :posts
  end


  resources :languagenames do
  resources :posts
  end


end
