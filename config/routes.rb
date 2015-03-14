Rails.application.routes.draw do
  root 'recipes#index'
  # 'devise/registrations#edit'

  resources :batches

  resources :uniques

  resources :reviews

  resources :recipes

  devise_for :users

  resources :beer_styles

end
