# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'home#index'
  resources :newsletters, only: [:create, :destroy], params: :destroy
end
