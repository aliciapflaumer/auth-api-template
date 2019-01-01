Rails.application.routes.draw do
  # User actions

  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'

  post '/sign-up' => 'users#signup'
  delete '/sign-out/:id' => 'users#destroy'

  resources :users

end
