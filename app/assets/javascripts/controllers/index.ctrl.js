library.controller('IndexCtrl', ['$http','$scope', function($http,$scope) {
	$http.get('/lastbooks.json').success(function(data) {
		$scope.lastbooks = data;
	});
}]);