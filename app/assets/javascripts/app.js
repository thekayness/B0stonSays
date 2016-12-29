angular.module('dontPuke', ['ui.router', 'templates', 'Devise'])
	.config([
		'$stateProvider',
		'$urlRouterProvider',
		function($stateProvider, $urlRouterProvider) {
			$stateProvider
				
				.state('restaurants', {
					url: '/restaurants/{id}',
					templateUrl: 'restaurants/_restaurants.html',
					controller: 'RestaurantsCtrl',
					resolve: {
					 	post: ['$stateParams', 'restaurants', function($stateParams, restaurants) {
					 		// console.log($stateParams.id);
					    	return restaurants.get($stateParams.id);
					  	}]
					}
				})
				.state('login', {
			      url: '/login',
			      templateUrl: 'auth/_login.html',
			      controller: 'AuthCtrl'
			    })
			    .state('register', {
			      url: '/register',
			      templateUrl: 'auth/_register.html',
			      controller: 'AuthCtrl',
			      onEnter: ['$state', 'Auth', function($state, Auth) {
			        Auth.currentUser().then(function (){
			          $state.go('home');
			        })
			      }]
			    })
				.state('about', {
					url: '/about',
					templateUrl: 'about/_about.html',
					controller: 'MainCtrl'
				})
				.state('about.search', {
					url: 'search',
					templateUrl: 'search/_search.html',
					controller: 'MainCtrl'
				});
			$urlRouterProvider.otherwise('about');
		}]);
	

