Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'cars' => 'cars#index' 

  post 'cars' => 'cars#create'
  get 'cars/new' => 'cars#new'
  
  get 'cars/:id' => 'cars#show', as: 'car'

end
