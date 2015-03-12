Rails.application.routes.draw do
  root 'beer_styles#index'

  resources :batches

  resources :uniques

  resources :reviews

  resources :recipes

  devise_for :users
  resources :beer_styles

end
