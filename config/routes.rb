Rails.application.routes.draw do
	  resources :people
	  devise_for :users

	resources :jobs


	  root 'jobs#index'

	 devise_scope :user do
	  get 'login', to: 'devise/sessions#new'
	  get 'signup', to: 'devise/registrations#new'
	  delete 'logout', to: 'devise/sessions#destroy'
	end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
