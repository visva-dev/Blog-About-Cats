Rails.application.routes.draw do
  resources :categories
  resources :articles

  root 'pages#home'
end
