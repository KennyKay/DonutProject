Rails.application.routes.draw do
  resources :donut_toppings
  resources :donut_types
  get 'program/index'
  root 'program#index'
end
