angular.module('dontPuke')
	.controller('RestaurantsCtrl', [
		'$scope',
		'restaurants',
		function($scope, restaurants) {
			$scope.restaurant = restaurants.restaurants;
			// console.log(restaurants.restaurants[0]);
		}
	]);