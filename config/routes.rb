Rails.application.routes.draw do
  root to: redirect("/#{I18n.default_locale}", status: 302), as: :redirected_root  
  scope '/:locale' , :locale => /en|id/ do
  	root 'home#index'
  	
  	get 'course', to: "course#index"
  	get 'blog', to: "blog#index"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
