angular.module('dontPuke', ['ui.router', 'templates'])
	.config([
		'$stateProvider',
		'$urlRouterProvider',
		function($stateProvider, $urlRouterProvider) {
			$stateProvider
				.state('home', {
					url: '/home',
					templateUrl: 'home/_home.html',
					controller: 'MainCtrl'
				})
				.state('restaurants', {
					url: '/restaurants/{id}',
					templateUrl: 'restaurants/_restaurants.html',
					controller: 'RestaurantsCtrl'
				});
			$urlRouterProvider.otherwise('home');
		}]);
	

