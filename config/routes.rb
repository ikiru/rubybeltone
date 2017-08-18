Rails.application.routes.draw do

  #########    Users    #############

  root 'users#index'
  post 'users' => 'users#create'
  get 'users/:id' => 'users#show'

  #########  Sessions   ############

  post 'sessions' => 'sessions#create'
  delete 'sessions/:id' => 'sessions#destroy'

  ########    Ideas    ###############

  get 'bright_ideas' => 'ideas#index'
  post 'bright_ideas' => 'ideas#create'
  get 'bright_ideas/:id' => 'ideas#show'
  delete 'bright_ideas/:id' => 'ideas#destroy'

  ##########  Likes   ###############

  post 'bright_ideas/:id/likes' => 'likes#create'
  get 'likes/create'
end
