# GET, POST , PATCH requests from controller

Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :pics do 				#reffered to index.html in pics
    member do
      put "like", to: "pics#upvote"
    end
  end	

  root "pics#index"				#check by rake routes command 
end
