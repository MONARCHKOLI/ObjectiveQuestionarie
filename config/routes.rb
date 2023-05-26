Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#index'
  resources :homes, only: ['index']
  resources :banners do
    resources :questionaries, only: ['show'] do
      resources :answers, only: ['show'] do
        resources :user_responses
      end
    end
  end
  
  # delete 'logout' => 'devise/sessions#destroy'
end
