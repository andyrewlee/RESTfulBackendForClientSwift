Rails.application.routes.draw do
  get 'dreams' => 'dreams#index'
  post 'dreams' => 'dreams#create'
end
