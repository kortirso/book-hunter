var library = angular.module('library', ['ngRoute','templates']);
library.config(function($routeProvider) {
	$routeProvider
		.when('/', {
			templateUrl: 'index.html',
			controller: 'IndexCtrl'
		})
		.when('/library/:id', {
			templateUrl: 'show.html',
			controller: 'ShowCtrl'
		})
		.when('/book/:id', {
			templateUrl: 'current.html',
			controller: 'CurrentCtrl'
		})
		.otherwise({
			redirectTo: '/'
		});
});

library.controller('IndexCtrl', ['$http','$scope', function($http,$scope) {
	$scope.h1 = "Электронное книгохранилище Book-Hunter";
	$http.get('/lastbooks.json').success(function(data) {
		$scope.lastbooks = data;
	});
}]);

library.controller('ShowCtrl', ['$http','$routeParams','$scope', function($http,$routeParams,$scope) {
	$scope.url_cat = '/category/' + $routeParams.id + '.json';
	$scope.url_books = '/library/' + $routeParams.id + '.json';
	$http.get($scope.url_cat).success(function(data) {
		$scope.category = data;
	});
	$http.get($scope.url_books).success(function(data) {
		$scope.books = data;
	});
}]);

library.controller('CurrentCtrl', ['$http','$routeParams','$scope', function($http,$routeParams,$scope) {
	$scope.url = '/book/' + $routeParams.id + '.json';
	$http.get($scope.url).success(function(data) {
		$scope.book = data;
	});
	$scope.string = $scope.book;
}]);