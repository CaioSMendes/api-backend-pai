Rails.application.routes.draw do
  resources :functionalities
  resources :permissions
  resources :profiles
  namespace :functionality do
    namespace :v1 do
      resources :apis
    end
  end
  resources :addresses
  resources :clients
  mount_devise_token_auth_for 'User', at: 'auth/v1/user'
  
  namespace :admin do
    namespace :v1 do
      get "home" => "home#index"
    end
  end

end
