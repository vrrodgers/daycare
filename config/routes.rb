Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :contacts, only: %i[new create]

  get 'home', to: 'pages#home'
  get 'about_us', to: 'pages#about_us'
  get 'contact_us', to: 'pages#contact_us'
  root to: 'pages#home'
end
