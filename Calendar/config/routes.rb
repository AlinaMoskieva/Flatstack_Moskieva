Rails.application.routes.draw do

#resources :meetings
#resources :users

devise_for :users
 resources :users
 resources :meetings


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".


  # You can have the root of your site routed with "root"
  root to: 'meetings#index'
   get '/', to: 'meetings#index'
   get '/meetings', to: 'meetings#index'
   get '/user/sign_in', to: 'devise/sessions#new'
   get '/all', to: 'meetings#all'
   get '/profile', to: 'users#show'
   get '/all', :action=>"all", :controller=>"devise/meetings"
  # get 'users/edit', to: 'devise/registrations#edit', as: :edit_user_registration
   get '/profile', :action=>"show", :controller=>"devise/users"
   get '/editUserInfo', to: 'users#editUserInfo'
   get '/calendar', to: 'meetings#getCalendar'
   get 'calendar', :action=>"getCalendar", :controller=>"devise/meetings"
  #get '/profile', :action=>"editUserInfo", :controller=>"users"

end
