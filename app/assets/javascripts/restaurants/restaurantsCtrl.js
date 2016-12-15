angular.module('dontPuke')
	.controller('RestaurantsCtrl', [
		'$scope',
		'$stateParams',
		'restaurants',
		function($scope, $stateParams, restaurants) {
			$scope.restaurant = restaurants.restaurants[$stateParams.id];
		}
	]);