angular.module('dontPuke')
	.controller ('MainCtrl', ['$scope','$http','restaurants', '$filter',
		function($scope, $http, restaurants, $filter) {
			
			$scope.filter = {};
			$scope.restaurants = restaurants.restaurants;
			$scope.refilterActive = function() {
				$scope.filteredRestaurants = $filter('filter')($scope.restaurants, $scope.restaurantActive);
			};
			$scope.searchName = function() {
				if(!$scope.name || $scope.name === '') {return;}
				return $http({
					method: 'GET',
					url: '/namesearch.json',
					params: {name: $scope.name}
				}).success(function(data){
					angular.copy(data, restaurants.restaurants);
					$scope.name = '';
					console.log($scope.restaurantStatus);
					console.log($scope.user);
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
			$scope.refilterActive();
		}
	]);