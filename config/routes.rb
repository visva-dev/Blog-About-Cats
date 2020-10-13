# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :articles do
    resources :likes, only: %i[create destroy]
  end

  root 'articles#index'
end
