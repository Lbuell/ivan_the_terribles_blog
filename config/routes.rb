IvanTheTerriblesBlog::Application.routes.draw do

  resources :posts do
    get 'page/:page', :action => :index, :on => :collection
    get 'comments', action: :comments, on: :collection
  end

  resources :comments
  resources :replies

  root :to => 'posts#index'

end

