Rails.application.routes.draw do
  get 'companies/index'

  get 'companies/edit'

  get 'companies/create'

  get 'companies/new'

  get 'companies/show'

  resources :companies
  resources :beers 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
