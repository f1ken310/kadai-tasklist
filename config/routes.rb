Rails.application.routes.draw do
  
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
    root to: 'tasks#index'
    
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'login', to: 'sessions#destroy'
    
    get 'signup', to: 'users#new'
    
    resources :tasks
    resources :users, only:[:create, :new]
    
end
