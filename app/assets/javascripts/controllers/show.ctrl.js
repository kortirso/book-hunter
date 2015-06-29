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