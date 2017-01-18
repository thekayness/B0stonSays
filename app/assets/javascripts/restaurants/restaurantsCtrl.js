angular.module('dontPuke')
	.controller('RestaurantsCtrl', [
		'$scope',
		'restaurants',
		'$filter',
		function($scope, restaurants, $filter) {
			$scope.restaurant = restaurants.restaurants;
			// console.log(restaurants.restaurants[0]);
			var reportDates = $scope.restaurant.inspections.map(function(inspection) {return inspection.result_date;}).filter(function(date) {return !!date;});
			var orderedDates = $filter('orderBy')(reportDates);
			$scope.criticals = $scope.restaurant.inspections.map(function(inspection) {return inspection.viol_level}).filter(function(level) {return level === '***'});
			$scope.mostRecentReport = orderedDates[0];
			console.log($scope.mostRecentReport.flags);
			
			$scope.incrementFlags = function(inspection) {
			  inspection.flags += 1;
			};
		}
	]);