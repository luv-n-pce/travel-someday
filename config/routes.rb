Rails.application.routes.draw do
  root to: 'memories#index'
  devise_for :users
  resources :memories
end
