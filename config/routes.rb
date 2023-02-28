Rails.application.routes.draw do
  root 'pages#home'
  # get '/home', to: 'players#new'
  get '/', to: 'pages#home'
  get '/playing', to: 'pages#playing'
  get '/result', to: 'pages#result'
  resources :players
end
