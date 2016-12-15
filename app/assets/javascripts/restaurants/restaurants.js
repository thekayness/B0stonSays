angular.module('dontPuke')
	.factory('restaurants', ['$http', function($http) {
		var restaurantsObj = {
			restaurants: []
		};
		return restaurantsObj;
	}]);