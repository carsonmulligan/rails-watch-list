# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists, except: %i[edit update]
  # resources :bookmarks, only: [:new, :create, :destroy]
end
