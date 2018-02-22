Rails.application.routes.draw do
  get 'doses/create'

  get 'doses/destroy'

  get 'ingredients/show'

 resources :cocktails, only: [:index, :show, :new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "cocktails#index"
end
