Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'application#home'
  post '/connect', to: 'application#connect'
  post '/reset', to: 'application#reset'
  post '/error', to: 'application#error'
  get '/connect', to: 'application#connect'
  get '/reset', to: 'application#reset'
  get '/error', to: 'application#error'
  post '/add_photo', to: 'application#add_photo'
  get '/remove_photos', to: 'application#remove_photos'
end
