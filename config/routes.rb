Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'application#home'
  post '/connect_arduino', to: 'application#connect_arduino'
  post '/reset_arduino', to: 'application#reset_arduino'
  post '/error_arduino', to: 'application#error_arduino'
  post '/connect_bluetooth_device', to: 'application#connect_bluetooth_device'
  post '/reset_bluetooth_device', to: 'application#reset_bluetooth_device'
  get '/error_bluetooth_devices', to: 'application#error_bluetooth_devices'
  post '/connect_magnetic_sensor', to: 'application#connect_magnetic_sensor'
  post '/reset_magnetic_sensor', to: 'application#reset_magnetic_sensor'
  post '/error_magnetic_sensor', to: 'application#error_magnetic_sensor'
  post '/add_photo', to: 'application#add_photo'
  post '/add_intrusion', to: 'application#add_intrusion'
  get '/remove_photos', to: 'application#remove_photos'
end
