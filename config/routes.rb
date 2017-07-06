Rails.application.routes.draw do
    get 'home', to: 'pages#home'
    get 'about_us', to: 'pages#about_us'
    get 'contact_us', to: 'pages#contact_us'
    
    root to: "pages#home"
end
