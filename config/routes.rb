Rails.application.routes.draw do

  resources :services
  resources :languages
  resources :charges
  resources :enterprises
  resources :studies
	devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks",  sessions: 'users/sessions', registrations: 'users/registrations' }
	resources :users
	get 'home/index'
	root 'home#landing'
	  authenticated :user do
    root to: 'welcome#index', as: :authenticated_root
  
  end

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
