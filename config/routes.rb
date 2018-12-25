Rails.application.routes.draw do
  # Home controller routes
  root 'home#index'
  get 'auth' => 'home#auth'

  # User actions
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  
  get '/users' => 'users#index'
  post '/users/create' => 'users#create'
  patch  '/user/:id' => 'users#update'
  delete '/user/:id' => 'users#destroy'

  resources :users

end
