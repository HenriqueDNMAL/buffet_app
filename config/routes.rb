Rails.application.routes.draw do
  devise_for :users

  # Public routes
  root "restaurants#index"

  # Customer routes
  resources :restaurants, only: [:index, :show] do
    resources :menu_items, only: [:index]
  end
  resources :orders, only: [:create, :show, :update]

  # Manager routes
  namespace :manager do
    resources :restaurants do
      resources :tables
      resources :menu_items
      resources :staff_assignments, only: [:create, :destroy]
    end
  end

  # Kitchen staff and wait staff routes
  namespace :staff do
    resources :orders, only: [:index, :update] # For kitchen staff and wait staff to view and update orders
  end

  # Reviews for customers
  resources :reviews, only: [:create]

  # ActionCable for real-time updates
  mount ActionCable.server => '/cable'
end
