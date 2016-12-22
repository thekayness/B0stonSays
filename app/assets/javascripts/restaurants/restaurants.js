angular.module('dontPuke')
	.factory('restaurants', ['$http', function($http) {
		var restaurantsObj = {
			restaurants: []
		};
		restaurantsObj.get = function(id) {
			// console.log('whatup');
		  return $http({
		  	method: 'GET',
		  	url: '/restaurants/' + id + '.json'
		  }).success(function(data){
		  	// console.log(res.data);
		  	angular.copy(data, restaurantsObj.restaurants);
		  });
		};
		// console.log(restaurantsObj);
		return restaurantsObj;
	}]);
