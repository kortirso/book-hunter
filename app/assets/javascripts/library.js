var library = angular.module('library', ['ngRoute','templates']);
library.config(function($routeProvider) {
	$routeProvider
		.when('/', {
			templateUrl: 'index.html',
			controller: 'IndexCtrl'
		})
		.when('/books/:id', {
			templateUrl: 'show.html',
			controller: 'ShowCtrl'
		})
		.otherwise({
			redirectTo: '/'
		});
});

library.controller('MenuCtrl', ['$http','$scope', function($http,$scope) {
	$http.get('/menu.json').success(function(data) {
		$scope.menu = data;
	});
}]);

library.controller('IndexCtrl', ['$http','$scope', function($http,$scope) {
	$scope.h1 = "Добро пожаловать";
	$http.get('/lastbooks.json').success(function(data) {
		$scope.lastbooks = data;
	});
}]);

library.controller('ShowCtrl', ['$http','$routeParams','$scope', function($http,$routeParams,$scope) {
	$scope.url_cat = '/category/' + $routeParams.id + '.json';
	$scope.url_books = '/books/' + $routeParams.id + '.json';
	$http.get($scope.url_cat).success(function(data) {
		$scope.category = data;
	});
	$http.get($scope.url_books).success(function(data) {
		$scope.books = data;
	});
}]);

library.directive('display', function() {
	return {
		restrict: 'E',
		templateUrl: 'display.html'
	};
});