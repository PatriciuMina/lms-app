Rails.application.routes.draw do
  devise_for :users
  root 'home#index'




  constraints subdomain: 'ubb' do
    get '/students', to: 'home#show'
    get '/new_user', to: 'home#new_user'
    post 'users' => 'home#new_user', as: :create_user
  end

  constraints subdomain: 'utcn' do
    get '/students', to: 'home#show'
    get '/new_user', to: 'home#new_user'
  end
  #get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
