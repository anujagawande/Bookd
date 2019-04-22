Rails.application.routes.draw do
  devise_for :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home' #change to profile route later
  get 'home', to: 'pages#home', as: 'home' 

  get 'users/new', to: 'users#new', as: 'new_user'
  get 'users/edit', to: 'users#edit', as: 'edit_user'
  get 'users/:id', to: 'users#show', as: 'user' 
  patch 'users', to: 'users#update'
  put 'users', to: 'users#update'
  post 'users', to: 'users#create'
  resources :users

  get 'search', to: 'pages#search', as: 'search'

  get 'discussions', to: 'discussions#index', as: 'discussions'
  post 'discussions', to: 'discussions#create'
  get 'discussions/new', to: 'discussions#new', as: 'new_discussion'
  get 'discussions/:id', to: 'discussions#show', as: 'discussion'
  

  get 'comments/new', to: 'comments#new', as: 'new_comment'
  get 'comments/:id/edit', to: 'comments#edit', as: 'edit_comment'
  get 'comments/:id', to: 'comments#show', as: 'comment' 
  patch 'comments/:id', to: 'comments#update'
  put 'comments/:id', to: 'comments#update'
  post 'comments', to: 'comments#create'
  delete 'comments/:id', to: 'comments#destroy'

  get 'books', to: 'books#index', as: 'books'
  post 'books', to: 'books#create'
  get 'books/new', to: 'books#new', as: 'new_book'
  get 'books/:id', to: 'books#show', as: 'book'

  get 'book_clubs', to: 'book_clubs#index', as: 'book_clubs'
  post 'book_clubs', to: 'book_clubs#create'
  get 'book_clubs/new', to: 'book_clubs#new', as: 'new_book_club'
  get 'book_clubs/:id/edit', to: 'book_clubs#edit', as: 'edit_book_club'
  get 'book_clubs/:id', to: 'book_clubs#show', as: 'book_club'
  patch 'book_clubs/:id', to: 'book_clubs#update'
  put 'book_clubs/:id', to: 'book_clubs#update'
 
end
