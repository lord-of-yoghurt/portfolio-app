Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    sign_up: 'register'
  }

  resources :portfolios, except: [:show] do
    put :sort, on: :collection
  end

  get 'angular-items', to: 'portfolios#angular'
  get 'ror-items', to: 'portfolios#ruby_on_rails'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  # customizing routes
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
end
