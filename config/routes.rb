Rails.application.routes.draw do
  # resources :animals, only: [:index, :show, :create, :update, :destroy]
  post '/animals', to: 'animals#create'
  get '/animals', to: 'animals#index'
  put '/animals/:id', to: 'animals#update'
  delete '/animals/:id', to: 'animals#destroy'
  get '/animals/:id', to: 'animals#show'
end
