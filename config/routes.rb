Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  root to: 'articles#index'
  get 'archives', to: 'articles#archives'

  resources :articles do
    resources :comments, only: [:new, :create, :edit, :update, :destroy]
    resource :likes, only: [:show, :create]
  end

  resources :ranks, only: [:index]
  resource :profile, only: [:show, :edit, :update]
  resources :users, only: [:show]
end
