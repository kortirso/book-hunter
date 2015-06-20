var library = angular.module('library', ['ngRoute','templates']);
library.config(function($routeProvider) {
	$routeProvider
		.when('/', {
			templateUrl: 'index.html',
			controller: 'IndexCtrl'
		})
		.when('/books/:name', {
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

library.controller('IndexCtrl', ['$scope', function($scope) {
	$scope.h1 = "Добро пожаловать";
}]);

library.controller('ShowCtrl', ['$routeParams','$scope', function($routeParams,$scope) {
	$scope.caption = $routeParams.name;
}]);

library.directive('display', function() {
	return {
		restrict: 'E',
		templateUrl: 'display.html'
	};
});