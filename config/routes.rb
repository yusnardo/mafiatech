Rails.application.routes.draw do
	root to: redirect("#{I18n.default_locale}", status: 302), as: :redirected_root 
	#resources :session, only: [:create, :destroy]
	#get '/session/new', to: redirect('/id/login')
	scope '(:locale)' , :locale => /en|id/ do
	  	root 'home#index'
	  	
	  	get 'course', to: ("course#index")
	  	get 'blog', to: ("blog#index")
	  	#get '/sessions/new', to: redirect('/%{locale}/login')

	  	#get '/login', to: 'sessions#new', as: 'login'
	    #get '/logout', to: 'sessions#destroy', as: 'logout'

	    # resources :sessions, only: [:create] do
	    #     collection do
	    #       get :oauth
	    #     end
	    # end
  	end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
