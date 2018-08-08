Rails.application.routes.draw do
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get 'home/index'
    root to: "home#index"
	resources :images
	get 'index', to: 'index#home'
end
