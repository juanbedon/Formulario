Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  #root 'welcome#index'
  #post "welcome/create", to: "welcome#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
