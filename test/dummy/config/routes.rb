Rails.application.routes.draw do

  resources :users


  mount Kblog::Engine => "/kblog"
end
