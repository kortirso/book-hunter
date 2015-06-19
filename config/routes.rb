Rails.application.routes.draw do
	get 'menu' => 'library#menu'
	root to: 'library#index'
end
