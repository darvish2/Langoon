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

  get "languagenames/english" => "languagenames#english"

  get "languagenames/french" => "languagenames#french"

  get "languagenames/chinese" => "languagenames#chinese"

  get "languagenames/spanish" => "languagenames#spanish"

  get "languagenames/russian" => "languagenames#russian"

  get "languagenames/arabic" => "languagenames#arabic"

  get "languagenames/german" => "languagenames#german"

  get "languagenames/italian" => "languagenames#italian"

  get "languagenames/indonesian" => "languagenames#indonesian"

  get "languagenames/malay" => "languagenames#malay"

  get "languagenames/vietnamese" => "languagenames#vietnamese"

  get "languagenames/swedish" => "languagenames#swedish"

  get "languagenames/hebrew" => "languagenames#hebrew"

  get "languagenames/portuguese" => "languagenames#portuguese"

  get "languagenames/esperanto" => "languagenames#esperanto"

  get "languagenames/vendergood" => "languagenames#vendergood"

  get "languagenames/latin" => "languagenames#latin"

  get "languagenames/greek" => "languagenames#greek"

  get "languagenames/ainu" => "languagenames#ainu"

  get "languagenames/korean" => "languagenames#korean"

  get "languagenames/hawaiian" => "languagenames#hawaiian"

  get "languagenames/turkish" => "languagenames#turkish"

  get "languagenames/dutch" => "languagenames#dutch"

  get "languagenames/ancient_japanese" => "languagenames#ancient_japanese"

  get "languagenames/html" => "languagenames#html"

  get "languagenames/css" => "languagenames#css"

  get "languagenames/ruby" => "languagenames#ruby"

  get "languagenames/javascript" => "languagenames#javascript"

  get "languagenames/php" => "languagenames#php"

  get "languagenames/sql" => "languagenames#sql"

  get "languagenames/go" => "languagenames#go"

  get "languagenames/c" => "languagenames#c"

  get "languagenames/c_sharp" => "languagenames#c_sharp"

  get "languagenames/c_plusplus" => "languagenames#c_plusplus"

  get "languagenames/kotlin" => "languagenames#kotlin"

  get "languagenames/java" => "languagenames#java"

  get "languagenames/python" => "languagenames#python"

  get "languagenames/swift" => "languagenames#swift"

  get "languagenames/sign_language" => "languagenames#sign_language"

  get "languagenames/braille" => "languagenames#braille"

  get "languagenames/newspeak" => "languagenames#newspeak"

  get "languagenames/ancient_greek" => "languagenames#ancient_greek"

  get "languagenames/ancient_latin" => "languagenames#ancient_latin"

  get "languagenames/ryukyu" => "languagenames#ryukyu"

  get "languagenames/maori" => "languagenames#maori"

  get "languagenames/luxemburgisch" => "languagenames#luxemburgisch"

  get "languagenames/bengali" => "languagenames#bengali"

  get "languagenames/hieroglyph" => "languagenames#hieroglyph"

  get "languagenames/swahili" => "languagenames#swahili"

  get "languagenames/sansklit" => "languagenames#sansklit"










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
