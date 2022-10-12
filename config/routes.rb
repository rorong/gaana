Rails.application.routes.draw do
  resources :playlists_songs
  resources :songs
  resources :albums
  resources :artists
  resources :playlists
  root to: 'pages#home'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
