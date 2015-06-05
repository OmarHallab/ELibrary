Rails.application.routes.draw do
  

  resources :online_articles

  devise_for :users
  resources :article_reading_lists

  resources :reading_lists

  	resources :articles do
  		resources :reviews, except: [:show, :index]
	end
  root to: 'articles#index'
  
end
