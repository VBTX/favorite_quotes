Rails.application.routes.draw do
  resources :notes
  resources :quotes
namespace :api do
 namespace :v1 do	
  resources :users
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
end
