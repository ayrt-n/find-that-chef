Rails.application.routes.draw do
  root 'shows#show'

  resources :seasons, only: [:show]
  resources :chefs
end
