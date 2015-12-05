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
