angular.module('dontPuke')
	.factory('restaurants', ['$http', 'Auth', function($http, Auth) {
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

		restaurantsObj.flag = function(inspection) {
		  return $http.put('/inspections/' + inspection.id + '.json')
		    .success(function(data){
		      inspection.flags += 1;
		    });
		};
		// console.log(restaurantsObj);
		return restaurantsObj;
		
	}]);
