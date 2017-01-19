Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/products', to: 'products#index'
  get '/products/:product_id', to: 'products#show'
  post '/products/:product_id', to: 'bids#create'
  get '/user/:user_id/show', to: 'users#show'
  get '/user/:user_id/new', to: 'users#new'
  #post '/user/:user_id/', to: 'products#destroy'
  post '/user/:user_id/create', to: 'users#create'

end
