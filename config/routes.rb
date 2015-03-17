Rails.application.routes.draw do
  # root 'recipes#index'
  # 'devise/registrations#edit'

  resources :batches

  resources :uniques

  resources :reviews

  resources :recipes

  devise_for :users

  devise_scope :user do
    root "devise/registrations#edit"
  end

  resources :beer_styles



end
