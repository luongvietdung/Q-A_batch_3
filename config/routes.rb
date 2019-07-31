Rails.application.routes.draw do
resources :admins
post '/admins/signup',  to: 'admins#create'
end
