Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :articles

  root 'articles#index'
end
