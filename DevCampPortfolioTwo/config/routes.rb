Rails.application.routes.draw do
  resources :topics, only: [:index, :show]
  
  devise_for :users, path: '', path_names: {sign_in: 'Login', sign_out: 'Logout', sign_up: 'Register'}
  resources :portfolios, except: [:show] do
    put :sort, on: :collection 
  end
  
  get 'angular-items', to: 'portfolio#angular'
  get 'portfolio/:id', to:'portfolios#show', as: 'portfolio_show'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'tech-news', to: 'pages#tech_news'
  get 'resume', to: 'pages#resume'
  get 'projects', to: 'pages#projects'

  resources :blogs do 
    member do 
      get :toggle_status
    end
  end
  
  mount ActionCable.server => '/cable'
  
  root to: 'pages#home'
end
