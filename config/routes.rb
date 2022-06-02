# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  resources :lists do
    resources :bookmarks, only: %i[new create]
    resources :reviews, only: %i[new create]
  end
  resources :movies, only: %i[new create destroy]
  resources :bookmarks, only: [:destroy]
  resources :reviews, only: [:destroy]
end
