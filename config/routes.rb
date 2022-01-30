Rails.application.routes.draw do
  get 'homes/index'
  get 'posts/index'
  devise_for :users
  resources :users, only: :show do
    collection do
      get 'like'
    end
  end
  root to: 'homes#index'
  resources :posts do
    collection do
      get 'search'
    end
    resources :comments, only: :create
    resources :likes, only: [:create, :destroy]
  end
  resources :homes, only: :index
end
