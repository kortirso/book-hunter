library.controller('CurrentCtrl', ['$http','$routeParams','$scope', function($http,$routeParams,$scope) {
	$scope.url = '/book/' + $routeParams.id + '.json';
	$http.get($scope.url).success(function(data) {
		$scope.book = data;
	});
}]);