angular.module('dontPuke', ['ui.router', 'templates'])
	.controller ('MainCtrl', [
		'$scope',
		function($scope) {
			$scope.test = 'Hello World!';
		}]);