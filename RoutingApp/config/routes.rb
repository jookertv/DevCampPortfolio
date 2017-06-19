Rails.application.routes.draw do
  
  namespace :admin do
    get 'dashboard/main'
    get 'dashboard/user'
    get 'dashboard/blog'
  end
  
  
  get 'about', to: 'pages#about'

  get 'leadgen/advertising/landingpage/lead', to: 'pages#contact', as: 'lead'

  resources :blogs
  resources :posts
  
  root to: 'pages#home'
  
  get 'posts/*missing', to: 'posts#missing'

  get 'query/:something/:another_one', to: 'pages#something'  

end
