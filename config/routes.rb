Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'static_pages#index'
  get '/posts', to: 'posts#index'

  # <http-request-type> <url>, to: '<controller-name>#<method-in-controller>'
  post '/posts', to: 'posts#create'
  post '/users', to: 'users#create'

  #modifications by post id
  put '/posts', to: 'posts#modify'
  delete '/posts', to: 'posts#delete'
end
