Rails.application.routes.draw do

  #########    Users    #############

  root 'users#index'
  post 'users' => 'users#create'
  get 'users/:id' => 'users#show'

  #########  Sessions   ############

  post 'sessions' => 'sessions#create'
  delete 'sessions/:id' => 'sessions#destroy'

  ########    Ideas    ###############

  get 'ideas' => 'ideas#index'
  post 'ideas' => 'ideas#create'
  get 'ideas/:id' => 'ideas#show'
  delete 'ideas/:id' => 'ideas#destroy'

  ##########  Likes   ###############

  post 'ideas/:id/likes' => 'likes#create'
  get 'likes/create'
end
