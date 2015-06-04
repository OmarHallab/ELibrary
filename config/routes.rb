Rails.application.routes.draw do
  resources :reviews

  resources :online_articles

  devise_for :users
  resources :article_reading_lists

  resources :reading_lists

  resources :articles

  root to: 'articles#index'
  
end
