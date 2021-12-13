# frozen_string_literal: true

Rails.application.routes.draw do
  resources :games
  resources :players
  resources :participants, only: %i[index create]
  root to: 'leaderboards#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
