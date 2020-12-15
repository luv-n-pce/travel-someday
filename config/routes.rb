Rails.application.routes.draw do
  root to: 'memories#index'
  devise_for :users
  resources :memories

  resources :users, only: :show do
    resources :plans
  end
end
