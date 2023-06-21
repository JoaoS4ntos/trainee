Rails.application.routes.draw do
  namespace 'api' do
    scope 'post' do
      post 'create', to:'post#create'
    end
  end
end
