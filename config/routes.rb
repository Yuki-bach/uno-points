Rails.application.routes.draw do
  root 'players#new'

  get '/new', to: 'players#new'
  get '/index', to: 'players#index'
  post '/edit_multiple', to: 'players#edit_multiple'
  get '/edit_multiple', to: 'players#edit_multiple'


  resources :players, only: [:create, :new, :edit, :update, :destroy_all, :edit_multiple, :update_multiple]
  resources :players do
    collection do
      delete :destroy_all
      post 'edit_multiple'
      post 'update_multiple'
    end
  end
end
