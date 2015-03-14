Rails.application.routes.draw do
  root 'recipes#index'

  resources :batches

  resources :uniques

  resources :reviews

  resources :recipes

  devise_for :users
  resources :beer_styles

end
