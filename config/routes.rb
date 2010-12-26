Wierszopis::Application.routes.draw do
  resources :profiles
  resources :chapters
  resources :users
  resources :poems do
    resources :comments
  end
  resource :session

  # strona glowna
  root :to => "poems#index"

  match '/login' => "sessions#new", :as => "login"
  match '/logout' => "sessions#destroy", :as => "logout"
  

end
