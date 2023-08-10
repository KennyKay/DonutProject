Rails.application.routes.draw do
  resources :donut_toppings, except: [:destroy]
  resources :donut_types, except: [ :destroy]
  get 'program/index'
  root 'program#index'
end
