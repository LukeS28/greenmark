Rails.application.routes.draw do
  resources :posts do
    resources :comments, :only => [:create]
  end
    root to: 'pages#home'
    get  'about', to: 'pages#about'
    get  'blog', to: 'pages#blog'
    get 'local', to: 'pages#local'
    get 'global', to: 'pages#global'
    resources :contacts, only: [:create]
    get 'contact-us', to: 'contacts#new', as: 'new_contact'
end