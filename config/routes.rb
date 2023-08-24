Rails.application.routes.draw do
  resources :boletas_meses
  resources :boletas
  resources :asociados
  resources :tipos_pagos
  resources :meses
  resources :years
  resources :tipos_socios
  resources :precios
  resources :comunas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "asociados#index"
end
