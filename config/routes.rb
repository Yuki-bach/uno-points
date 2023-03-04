Rails.application.routes.draw do
  root 'players#new'
  get '/playing', to: 'players#edit_multiple'
  post '/playing', to: 'players#edit_multiple'

  resources :players, only: [:create, :new, :edit, :update, :destroy_all, :edit_multiple, :update_multiple]
  resources :players do
    collection do
      delete :destroy_all
      post 'update_multiple'
    end
  end
end
