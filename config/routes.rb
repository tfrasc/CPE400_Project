Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'application#home'
  post '/update', to: 'application#update'
  post '/reset', to: 'application#reset'
  get '/update', to: 'application#update'
  get '/reset', to: 'application#reset'
end
