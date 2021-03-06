Rails.application.routes.draw do
  root to: 'memories#index'
  devise_for :users
  resources :memories do
    resources :comments, only: [:create, :destroy]
    resource :likes, only: [:create, :destroy]
    collection do
      get 'search'
    end
  end
  resources :users, only: :show do
    resources :plans
  end
end
