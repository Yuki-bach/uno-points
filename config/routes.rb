Rails.application.routes.draw do
  root 'pages#hello'
  get '/home', to: 'pages#home'
  get '/playing', to: 'pages#playing'
  get '/result', to: 'pages#result'
end
