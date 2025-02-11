Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  resources :posts do
    resources :comments
  end

  root "posts#index"
end
