angular.module('dontPuke', [])
	.controller ('MainCtrl', [
		'$scope',
		function($scope) {
			$scope.test = 'Hello World!';
		}]);