Rails.application.routes.draw do
  devise_for :users

  root to: 'home#index'
  get :about, to: 'home#about'

  resources :tweets, except: :show
  resources :users, only: [:show, :index]
end
