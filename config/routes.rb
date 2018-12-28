Rails.application.routes.draw do
  # User actions

  get '/users' => 'users#index'
  post '/users/create' => 'users#create'
  patch  '/user/:id' => 'users#update'
  delete '/user/:id' => 'users#destroy'

  resources :users

end
