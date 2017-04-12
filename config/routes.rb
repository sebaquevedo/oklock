Rails.application.routes.draw do

	devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks", registrations: 'users/registrations' }
	
	get 'home/index'
	root 'home#index'
	  authenticated :user do
    root to: 'welcome#index', as: :authenticated_root
  end

  root to: 'landing#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
