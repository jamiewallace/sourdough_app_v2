SourdoughApp::Application.routes.draw do
  devise_for :users, controllers: {registrations: 'users', sessions: "sessions"}
  #devise_for :users, controllers: {registrations: 'users', }
  devise_scope :user do
    authenticated do
      root to: 'users#show'
    end

    resources :users, only: [:index, :show, :edit] do
      collection do
        post :search
      end
    end
    # post '/search/take', to: 'users#search'
    # post '/search/give', to: 'users#search'
    # get '/search/take', to: 'users#search'
    # get '/search/give', to: 'users#search'
  end

  root to: 'welcome#index'
  get '/about/', to: 'welcome#about'
  get '/faq/', to: 'welcome#faq'
  get '/contact/', to: 'welcome#contact'
  get '/forum/', to: 'welcome#forum'


  resources :messages, only: [:create, :destroy]
  get   'conversation/:id',   :to => "messages#conversation",  :as => "conversation"
  get   'inbox',              :to => "messages#inbox"

  # get '/users/new', to: 'users#new'
  # post '/users/', to: 'users#create'
  # get '/users/:id', to: 'users#show'
  # get '/users/', to: 'users#index'
  # get '/users/:id/edit', to: 'users#edit'
  # put '/users/:id', to: 'users#update'
  # delete '/users/:id', to: 'users#destroy'


  # get '/messages/:id/    ', to: 'messages#new'
  # post '/messages/:id   ', to: 'messages#create'

  resources :images

  resources :posts
  resources :comments

  # get '/images/new', to: 'images#new'
  # post 'images/', to: 'images#create'
  # get '/images/:id', to: 'images#show'
  # get '/images/', to: 'images#index'
  # get '/images/:id/edit', to: 'images#edit'
  # put '/images/:id', to: 'images#update'
  # delete '/images/:id', to: 'images#destroy'



end
