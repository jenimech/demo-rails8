Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  resources :posts do
    resources :comments
  end

  root "posts#index"

  get 'manifest' => 'rails/pwa#manifest', as: :pwa_manifest
  get 'service-worker' => 'rails/pwa#service_worker', as: :pwa_service_worker
end
