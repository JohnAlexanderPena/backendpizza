Rails.application.routes.draw do

  resources :users
  resources :reviews

  get '/pizzaplaces', to: 'pizzaplaces#index'

  post '/pizzaplaces', to: 'pizzaplaces#create'



end
