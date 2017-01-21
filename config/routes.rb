Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'users#home'
  post '/', to: 'users#create', as: :users
  get '/products', to: 'products#index'
  get '/products/:product_id', to: 'products#show'
  post '/products/:product_id', to: 'bids#create', as: :bids
  get '/user/show', to: 'users#show'
  get '/user/new', to: 'products#new'
  post 'user/new', to: 'products#create'
  #post '/user/:user_id/', to: 'products#destroy'
  #post '/user/:user_id/create', to: 'users#create'

end
