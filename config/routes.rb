Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'shelters#shelters'
  
  get '/shelters', to: 'shelters#index'
  get '/shelters/new', to: 'shelters#new'
  post '/shelters', to: 'shelters#create'
  get 'shelters/:id', to: 'shelters#show'
  get 'shelters/:id/edit', to: 'shelters#edit'
  patch 'shelters/:id', to: 'shelters#update'
  delete 'shelters/:id', to: 'shelters#destroy'

  get '/pets', to: 'pets#index'
  get '/pets/:id', to: 'pets#show'
  get '/pets/:id/edit', to: 'pets#edit'
  patch '/pets/:id', to: 'pets#update'
  get '/shelters/:shelter_id/pets', to: 'shelters#pets_index'
  post '/shelters/:shelter_id/pets', to: 'pets#create'
  get '/shelters/:shelter_id/pets/new', to: 'pets#new'
  delete 'pets/:id', to: 'pets#destroy'
end
