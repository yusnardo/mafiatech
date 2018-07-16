Rails.application.routes.draw do
  scope '/:locale' do
    root 'home#index'
  	get 'course', to: "course#index"
  	get 'blog', to: "blog#index"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
