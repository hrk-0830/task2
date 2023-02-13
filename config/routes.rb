Rails.application.routes.draw do
  get '/' => 'homes#top', as: 'root'
  resources :books, :except => :new
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
