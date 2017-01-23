Rails.application.routes.draw do

  namespace :admin do
    resources :users
resources :answers
resources :questions
resources :surveys

    root to: "users#index"
  end

	devise_scope :user do
  	get 'users/sign_out', to: 'devise/sessions#destroy'
	end
  devise_for :users
  resources :users, only: [:index, :update]
	resources :surveys

  get 'index' => 'welcome#index'
  get 'about' => 'welcome#about'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
