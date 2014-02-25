IvanTheTerriblesBlog::Application.routes.draw do

  resources :posts do
    get 'page/:page', :action => :index, :on => :collection
  end

  resources :comments
  resources :replies

  root :to => 'posts#index'

end

