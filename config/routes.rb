Rails.application.routes.draw do
  
  root to: "lists#index"
  
  
  resources :lists 
  resources :cards
  resources :webhooks, defaults: {format: 'json'}
  
end
