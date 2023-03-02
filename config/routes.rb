Rails.application.routes.draw do
  root 'players#index'
  get '/playing', to: 'pages#playing'
  get '/result', to: 'pages#result'
  get '/new', to: 'players#new'
  get '/index', to: 'players#index'
  resources :players, only: [:index, :show, :new, :create]
  resources :players do
    collection do
      delete :destroy_all
    end
  end
end
