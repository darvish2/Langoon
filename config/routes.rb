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







  get "languagenames/l_japanese" => "languagenames#l_japanese"

  get "languagenames/l_english" => "languagenames#l_english"

  get "languagenames/l_french" => "languagenames#l_french"

  get "languagenames/l_chinese" => "languagenames#l_chinese"

  get "languagenames/l_spanish" => "languagenames#l_spanish"

  get "languagenames/l_russian" => "languagenames#l_russian"

  get "languagenames/l_arabic" => "languagenames#l_arabic"

  get "languagenames/l_german" => "languagenames#l_german"

  get "languagenames/l_italian" => "languagenames#l_italian"

  get "languagenames/l_indonesian" => "languagenames#l_indonesian"

  get "languagenames/l_malay" => "languagenames#l_malay"

  get "languagenames/l_vietnamese" => "languagenames#l_vietnamese"

  get "languagenames/l_swedish" => "languagenames#l_swedish"

  get "languagenames/l_hebrew" => "languagenames#l_hebrew"

  get "languagenames/l_portuguese" => "languagenames#l_portuguese"

  get "languagenames/l_esperanto" => "languagenames#l_esperanto"

  get "languagenames/l_vendergood" => "languagenames#l_vendergood"

  get "languagenames/l_latin" => "languagenames#l_latin"

  get "languagenames/l_greek" => "languagenames#l_greek"

  get "languagenames/l_ainu" => "languagenames#l_ainu"

  get "languagenames/l_korean" => "languagenames#l_korean"

  get "languagenames/l_hawaiian" => "languagenames#l_hawaiian"

  get "languagenames/l_turkish" => "languagenames#l_turkish"

  get "languagenames/l_dutch" => "languagenames#l_dutch"

  get "languagenames/l_ancient_japanese" => "languagenames#l_ancient_japanese"

  get "languagenames/l_html" => "languagenames#l_html"

  get "languagenames/l_css" => "languagenames#l_css"

  get "languagenames/l_ruby" => "languagenames#l_ruby"

  get "languagenames/l_javascript" => "languagenames#l_javascript"

  get "languagenames/l_php" => "languagenames#l_php"

  get "languagenames/l_sql" => "languagenames#l_sql"

  get "languagenames/l_go" => "languagenames#l_go"

  get "languagenames/l_c" => "languagenames#l_c"

  get "languagenames/l_c_sharp" => "languagenames#l_c_sharp"

  get "languagenames/l_c_plusplus" => "languagenames#l_c_plusplus"

  get "languagenames/l_kotlin" => "languagenames#l_kotlin"

  get "languagenames/l_java" => "languagenames#l_java"

  get "languagenames/l_python" => "languagenames#l_python"

  get "languagenames/l_swift" => "languagenames#l_swift"

  get "languagenames/l_sign_language" => "languagenames#l_sign_language"

  get "languagenames/l_braille" => "languagenames#l_braille"

  get "languagenames/l_newspeak" => "languagenames#l_newspeak"

  get "languagenames/l_ancient_greek" => "languagenames#l_ancient_greek"

  get "languagenames/l_ancient_latin" => "languagenames#l_ancient_latin"

  get "languagenames/l_ryukyu" => "languagenames#l_ryukyu"

  get "languagenames/l_maori" => "languagenames#l_maori"

  get "languagenames/l_luxemburgisch" => "languagenames#l_luxemburgisch"

  get "languagenames/l_bengali" => "languagenames#l_bengali"

  get "languagenames/l_hieroglyph" => "languagenames#l_hieroglyph"

  get "languagenames/l_swahili" => "languagenames#l_swahili"

  get "languagenames/l_sansklit" => "languagenames#l_sansklit"










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
