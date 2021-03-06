Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [ :index, :show, :new, :create ] do
    resources :doses, only: [ :new, :create ]
  end
  resources :doses, only: :destroy
end

# Rails.application.routes.draw do
#   # devise_for :users
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   root to: "cocktails#index"
#   resources :cocktails, only: [:index, :show, :new, :create, :destroy] do
#     resources :doses, only: [:new, :create]
#     resources :reviews, only: [:new, :create]
#   end
#   resources :doses, only: [:destroy]
# end
