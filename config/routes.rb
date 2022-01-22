Rails.application.routes.draw do
  get 'posts/index'
  devise_for :users
  resources :users, only: :show
  root to: 'posts#index'
  resources :posts do
    collection do
      get 'search'
    end
  end
end
