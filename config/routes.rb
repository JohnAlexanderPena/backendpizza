Rails.application.routes.draw do

  resources :users
  resources :reviews

  get '/pizzaplaces', to: 'pizzaplaces#index'

  post '/pizzaplaces', to: 'pizzaplaces#create'

  patch '/reviews/:id', to: 'reviews#update'

  get '/users', to: 'users#find_user'

  post '/users', to: 'users#create'

end
