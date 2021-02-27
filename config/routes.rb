Rails.application.routes.draw do
  get '/create' => 'contact#index'
  post '/create' => 'contact#create'
  root 'index#index'
end
