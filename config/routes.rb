Rails.application.routes.draw do
  root 'pages#home'
  # get '/home', to: 'players#new'
  get '/playing', to: 'pages#playing'
  get '/result', to: 'pages#result'
  get '/new', to: 'players#new'
  resources :players
end
