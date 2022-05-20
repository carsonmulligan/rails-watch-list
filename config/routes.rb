# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "lists#index"
  resources :lists, except: %i[edit update] do
    resources :bookmarks, only: [:new, :create, :destroy]
  end
  resources :bookmarks, only: [:destroy]
end
