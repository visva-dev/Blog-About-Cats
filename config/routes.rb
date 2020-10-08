Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :articles do
    resources :likes, only: [:create, :destroy]
  end

  root 'articles#index'
end
