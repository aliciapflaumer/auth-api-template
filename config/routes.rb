Rails.application.routes.draw do
  # User actions

  get '/users' => 'users#index'
  post '/users/create' => 'users#create'
  post '/users/signin' => 'users#show'
  patch  '/update/:id' => 'users#update'
  delete '/delete/:id' => 'users#destroy'

  resources :users

end
