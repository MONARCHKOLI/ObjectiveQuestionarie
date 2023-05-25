Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#index'
  resources :homes
  resources :banners do
    resources :questionaries, only: ['show']
  end
  # delete 'logout' => 'devise/sessions#destroy'
end
