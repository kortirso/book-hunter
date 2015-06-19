var library = angular.module('library', ['ngRoute','templates']);
library.config(function($routeProvider) {
	$routeProvider
		.when('/', {
			templateUrl: 'index.html',
			controller: 'IndexCtrl'
		})
		.when('/#', {
			templateUrl: 'index.html',
			controller: 'IndexCtrl'
		})
		.otherwise({
			redirectTo: '/#'
		});
});

library.controller('IndexCtrl', ['$scope', function($scope) {
	$scope.h1 = "Добро пожаловать";
}]);
