Rails.application.routes.draw do
  root 'shows#show'

  resources :shows, only: [:show]
  resources :seasons, only: [:show]
  resources :chefs
end
