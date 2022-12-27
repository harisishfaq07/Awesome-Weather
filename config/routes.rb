Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :searches
  root "homepage#landing"
  get "/countries" , to: "homepage#countries"
  get "/show_result" , to: "homepage#show_result"
  post "/result" , to: "homepage#get_result"
  post "/weather" , to: "homepage#weather"
end
