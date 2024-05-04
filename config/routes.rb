Rails.application.routes.draw do
  root 'pages#home'

  resources :shows, only: [:show]
  resources :seasons, only: [:show]
end
