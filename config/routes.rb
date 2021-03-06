Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'cars#index'

  get 'cars' => 'cars#index' 

  post 'cars' => 'cars#create'
  get 'cars/new' => 'cars#new'

 
  get 'cars/:id' => 'cars#show', as: 'car'

  get 'cars/:id/edit' => "cars#edit", as: "edit_car"
  patch 'cars/:id' => "cars#update"

end
