Rails.application.routes.draw do
  root 'pages#home'

  resources :shows, only: [:show]
end
