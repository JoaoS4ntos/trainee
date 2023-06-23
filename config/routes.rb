Rails.application.routes.draw do
  devise_for :users
  namespace 'api' do
    scope 'post' do
      post 'create', to:'post#create'
      patch 'update/:id', to:'post#update'
      delete 'delete/:id' , to:'post#delete'
      get 'show/:id' , to:'post#show'
    end
    scope 'commentary' do
      post 'create', to:'commentary#create'
      patch 'update/:id', to:'commentary#update'
      delete 'delete/:id' , to:'commentary#delete'
      get 'show/:id' , to:'commentary#show'
    end
    scope 'feedback' do
      post 'create', to:'feedback#create'
      patch 'update/:id', to:'feedback#update'
      delete 'delete/:id' , to:'feedback#delete'
      get 'show/:id' , to:'feedback#show'
    end
    scope 'category' do
      post 'create', to:'category#create'
      patch 'update/:id', to:'category#update'
      delete 'delete/:id' , to:'category#delete'
      get 'show/:id' , to:'category#show'
    end
    scope 'users' do
      get 'login', to: "users#login"
    end
  end
end
