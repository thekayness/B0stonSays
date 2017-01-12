angular.module('dontPuke', ['ui.router', 'templates', 'Devise'])
	.config([
		'$stateProvider',
		'$urlRouterProvider',
		function($stateProvider, $urlRouterProvider) {
			$stateProvider
				//show a single restaurant
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
				//show login form template/handle with AuthCtrl
				.state('login', {
			      url: '/login',
			      templateUrl: 'auth/_login.html',
			      controller: 'AuthCtrl',
			      //if user is logged in, redirect to home using onEnter callback
			      onEnter: ['$state', 'Auth', function($state, Auth) {
			        Auth.currentUser().then(function (){
			          $state.go('home');
			        })
			      }]
			    })
			    //show registration form template/handle with AuthCtrl
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
			    //home state obvy
				.state('home', {
					url: '/home',
					templateUrl: 'home/_home.html',
					controller: 'MainCtrl'
				})
				//show search form
				.state('search', {
					url: '/search',
					templateUrl: 'search/_search.html',
					controller: 'MainCtrl'
				});
			$urlRouterProvider.otherwise('home');
		}]);
	