Rails.application.routes.draw do


devise_for :users
 resources :users
 resources :meetings

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
