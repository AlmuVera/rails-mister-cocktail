Rails.application.routes.draw do
 resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:create, :destroy]
  end
  resources :ingredients, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "cocktails#index"
end
