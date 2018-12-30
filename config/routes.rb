Rails.application.routes.draw do
  # User actions

  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'
  
  post '/users/create' => 'users#create'
  patch  '/change-password/:id' => 'users#update'
  delete '/delete/:id' => 'users#destroy'

  resources :users

end
