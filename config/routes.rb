Rails.application.routes.draw do
  root 'players#new'

  get '/new', to: 'players#new'
  get '/index', to: 'players#index'
  get '/playing', to: 'players#index'
  post '/index', to: 'players#index'


  resources :players, only: [:create, :new, :edit, :update, :destroy]
  resources :players do
    collection do
      delete :destroy_all
    end
  end
end
