Wierszopis::Application.routes.draw do |map|
  resources :profiles
  resources :users do
    resources :chapters
  end
  resources :chapters
  resources :credits
  resources :poems do
    resources :comments
  end

  get '/poems/find', to: 'poems#find' #akcja 'find'
  get '/poems/index', to: 'poems#index'

  resource :session

  # strona glowna
  root to: 'poems#index'

	# kanal rss
  get '/rss.xml', to: 'poems#rss'

  get '/login' => 'sessions#new', as: 'login'
  get '/logout' => 'sessions#destroy', as: 'logout'

end
