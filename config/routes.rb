Rails.application.routes.draw do
  get 'homes/index'
  get 'posts/index'
  devise_for :users
  resources :users, only: :show
  root to: 'homes#index'
  resources :posts do
    collection do
      get 'search'
    end
    resources :comments, only: :create
  end
  resources :homes, only: :index
end
