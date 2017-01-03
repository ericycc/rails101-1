Rails.application.routes.draw do
  devise_for :users
   resources :groups do
    members do
      post :join
      post :quit
     end

     resources :posts
   end

   namespace :account do
     resources :groups
     
   end
   root 'groups#index'
end
