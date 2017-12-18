Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources :events do
    post 'delete_user_from_event'
	  resources :comments
    resources :event_users do
    end
	end

	root 'events#index'
end
