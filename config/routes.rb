Rails.application.routes.draw do
  get 'islio_chat', to: 'hello_world#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'

  get 'dashboard' => 'home#dashboard'

  get '/logout' => 'auth0#logout'

  get '/auth/auth0', as: 'authentication'
  get '/auth/auth0/callback' => 'auth0#callback' #Authentication successful
  get '/auth/failure' => 'auth0#failure' #Authentication fail
end
