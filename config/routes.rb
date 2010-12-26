Wierszopis::Application.routes.draw do
  resources :profiles
  resources :chapters
  resources :users
  resources :poems do
    resources :comments
  end

  root :to => "poems#index"

end
