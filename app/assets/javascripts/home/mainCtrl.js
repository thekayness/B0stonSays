angular.module('dontPuke')
	.controller ('MainCtrl', [
		'$scope',
		'$http',
		'restaurants',
		function($scope, $http, restaurants) {
			$scope.test = 'Hello World!';
			$scope.restaurants = restaurants.restaurants;
			$scope.searchName = function() {
				if(!$scope.name || $scope.name === '') {return;}
				return $http({
					method: 'GET',
					url: '/namesearch.json',
					params: {name: $scope.name}
				}).success(function(data){
					angular.copy(data, restaurants.restaurants);
					$scope.name = '';
				});
			}
			$scope.searchAddress = function() {
				if(!$scope.address || $scope.address === '') {return;}
				return $http({
					method: 'GET',
					url: '/addresssearch.json',
					params: {address: $scope.address}
				}).success(function(data){
					angular.copy(data, restaurants.restaurants);
					$scope.address = '';
				});
			}
			$scope.wouldEat = function(restaurant) {
				restaurant.would_eat += 1;
			};
		}
	]);