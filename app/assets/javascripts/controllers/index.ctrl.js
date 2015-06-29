library.controller('IndexCtrl', ['$http','$scope', function($http,$scope) {
	$scope.h1 = "Электронное книгохранилище Book-Hunter";
	$http.get('/lastbooks.json').success(function(data) {
		$scope.lastbooks = data;
	});
}]);