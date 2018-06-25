Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "books#index"
  
  get "/books" => "books#index"
  get "/book/new" => "books#new"
  get "/book/:id" => "books#show"
  post "/books" => "books#create"
  get "/book/:id/edit" => "books#edit"
  put "/book/:id" => "books#update"
  patch "/book/:id" => "books#update"
  delete "/book/:id" => "books#destroy"
  
end
