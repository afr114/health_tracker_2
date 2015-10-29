Rails.application.routes.draw do
  root 'users#show'
  devise_for :users
  resources :users, only: [:show] do
    resources :goals, only: [:create, :edit, :update] do
      resources :foods
      resources :exercises
    end
  end
end
