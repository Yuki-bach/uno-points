Rails.application.routes.draw do
  root 'players#new'

  get '/new', to: 'players#new'
  get '/edit_multiple', to: 'players#edit_multiple'
  get 'players/destroy_all', to: 'players#destroy_all'

  post '/edit_multiple', to: 'players#edit_multiple'
  delete 'players', to: 'players#destroy_all'

  resources :players, only: [:create, :new, :edit, :update, :destroy_all, :edit_multiple, :update_multiple]
  resources :players do
    collection do
      delete :destroy_all
      post 'update_multiple'
    end
  end
end
