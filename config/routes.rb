Rails.application.routes.draw do

	get 'books' => 'books#index', as: 'books'
	get 'books/new' => 'books#new', as: 'new_book'
	post 'books' => 'books#create'

	get 'menu' => 'library#menu'
	get 'category/:id' => 'library#category'
	get 'library/:id' => 'library#books'
	get 'book/:id' => 'library#currentbook'
	get 'lastbooks' => 'library#lastbooks'
	root to: 'library#index'
end
