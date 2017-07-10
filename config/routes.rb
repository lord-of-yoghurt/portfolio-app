Rails.application.routes.draw do
  resources :portfolios
  resources :blogs

  # customizing routes
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
end
