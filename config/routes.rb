Rails.application.routes.draw do

	devise_for :admins
	get 'books' => 'books#index', as: 'books'
	get 'books/new' => 'books#new', as: 'new_book'
	post 'books' => 'books#create'

	get 'category/:id' => 'library#category'
	get 'library/:id' => 'library#books'
	get 'book/:id' => 'library#currentbook'
	get 'lastbooks' => 'library#lastbooks'
	root to: 'library#index'
	match "*path", to: "application#catch_404", via: :all
end
