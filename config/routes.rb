Rails.application.routes.draw do
  devise_for :users, :path => 'auth'
  root 'home#index'
  resources :schools



  constraints subdomain: 'ubb' do
    resources :users_admin, :controller => 'users'
  end

  constraints subdomain: 'utcn' do
    resources :users_admin, :controller => 'users'
    #get '/users', to: 'home#show'
    #get '/new_user', to: 'home#new_user'
  end
  #get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
