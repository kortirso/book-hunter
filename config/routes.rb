Rails.application.routes.draw do
	get 'menu' => 'library#menu'
	get 'category/:id' => 'library#category'
	get 'books/:id' => 'library#books'
	get 'book/:id' => 'library#currentbook'
	get 'lastbooks' => 'library#lastbooks'
	root to: 'library#index'
end
