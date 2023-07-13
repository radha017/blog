Rails.application.routes.draw do
  devise_for :readers
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  #localhost:3000/auth
  post '/auth/signup' => 'auth#signup'
  # Defines the root path route ("/")
  #localhost:3000/articles
  get '/articles' => 'articles#index', as: 'articles'
  get '/artiicles/:id' => 'articles#show', as: 'show'
  get '/articles/new' => 'articles#new', as: 'new_article'
  post '/articles' => 'articles#create', as: 'create_article'
  delete '/articles/:id' => 'articles#delete', as: 'delete_article'
  patch '/articles/:id' => 'articles#update', as: 'update_article'
  get '/articles/:id/edit' => 'articles#edit', as: 'edit_article'
  root 'articles#home'

end
