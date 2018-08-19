Rails.application.routes.draw do
  root 'meetups#new'
  get '/new' => 'meetups#new'
  get '/index' => 'meetups#index'
  post '/meetups' => 'meetups#create'
end
