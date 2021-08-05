Rails.application.routes.draw do
  resources :pokemen
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'about' => 'home#about'
  resources :home
end
