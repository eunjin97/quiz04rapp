Rails.application.routes.draw do
  
  # comment
  resources :comments, only: [:create, :destroy]
  
  # participate
  resources :participates, only: [:new, :create, :edit, :update, :destroy]
  
  # jukebox
  get 'jukebox', to: 'jukebox#index'

  # user
  devise_for :users
 # post '/artists/:id/follow', to: 'follows#artist_follow_toggle', as: 'artist_follow'

  #like
  post '/articles/:id/like', to: 'likes#like_toggle', as: 'like_article'
  
  # article
  root to: 'articles#index'
  resources :articles
  
  #songs
  resources :songs
  post '/songs/:id/follow', to: 'follows#song_follow_toggle', as: 'song_follow'
  
  #artists
  resources :artists
  post '/artists/:id/follow', to: 'follows#artist_follow_toggle', as: 'artist_follow'


  
  # profile
  get '/my_profile', to: 'profiles#show'
  get '/new_profile', to: 'profiles#new'
  get '/create_profile', to: 'profiles#new'
  post '/create_profile', to: 'profiles#create'
  get '/edit_profile', to: 'profiles#edit'
  get '/update_profile', to: 'profiles#edit'
  patch '/update_profile', to: 'profiles#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
