Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :users do
    resources :parents
    resources :children
    resources :families
    resources :informations
  end

  resources :contacts, only: %i[new create]

  get 'home', to: 'pages#home'
  get 'about_us', to: 'pages#about_us'
  get 'contact_us', to: 'pages#contact_us'
  root to: 'pages#home'

  resources :parents
  resources :children
  resources :families
  resources :informations
  resources :applies
end
