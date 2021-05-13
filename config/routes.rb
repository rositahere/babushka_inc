Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  resources :grannies, only: [:index, :show, :new, :create, :update]
  resources :users, only: [:show] do
    resources :appointments, only: [:create]
  end
  resources :reviews, only: [:new, :create]
end
