Rails.application.routes.draw do
  root 'players#new'

  get '/new', to: 'players#new'
  get '/index', to: 'players#index'
  post '/index', to: 'players#index'
  get '/edit_multiple', to: 'players#edit_multiple'


  resources :players, only: [:create, :new, :edit, :update, :destroy_all]
  resources :players do
    collection do
      delete :destroy_all
      post 'edit_multiple'
      post 'update_multiple'
      
    end
  end
end
