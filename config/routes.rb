Rails.application.routes.draw do
  get '/' => 'homes#top', as: 'top'
  get 'books/new'
  get '/books' => 'books#index', as: 'book'
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show', as: 'book_show'
  get 'books/:id/edit' => 'books#edit', as: 'book_edit'
  patch 'books/:id' => 'books#update', as: 'book_update'
  delete 'books/:id' => 'books#destroy', as: 'book_destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
