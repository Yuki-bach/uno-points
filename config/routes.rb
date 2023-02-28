Rails.application.routes.draw do
  root "pages#hello"
  get 'pages/home'
  get 'pages/playing'
  get 'pages/result'
end
