Rails.application.routes.draw do
  root 'players#index'

  get '/new', to: 'players#new'
  get '/index', to: 'players#index'
  get '/playing', to: 'players#edit'
  patch '/playing', to: 'players#edit'

  resources :players, only: [:index, :show, :new, :create]
  resources :players do
    collection do
      delete :destroy_all
    end
  end
end
