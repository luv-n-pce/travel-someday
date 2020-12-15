Rails.application.routes.draw do
  root to: 'memories#index'
  devise_for :users
  resources :memories, only: [:index, :create, :new, :show, :edit, :update]
end
