Rails.application.routes.draw do
  resources :donut_toppings, except: [:destroy]
  resources :donut_types, except: [ :destroy]
  resources :orders, except: [ :destroy]
  
  get 'program/index'
  root 'program#index'
  post 'program/add_various_donut_types'
  post 'program/add_various_donut_toppings'
end
