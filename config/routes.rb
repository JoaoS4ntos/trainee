Rails.application.routes.draw do
  namespace 'api' do
    scope 'post' do
      post 'create', to:'post#create'
      patch 'update/:id', to:'post#update'
      delete 'delete/:id' , to:'post#delete'
      get 'show/:id' , to:'post#show'
    end
  end
end
