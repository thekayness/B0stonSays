//controller for authorizing users using angular-devise

angular.module('dontPuke')
.controller('AuthCtrl', [
'$scope',
'$state',
'Auth',
function($scope, $state, Auth){

	//expose Auth login/register functions to $scope that return promises that
	//we use to direct the user to the 'home' state if successful
	$scope.login = function() {
	    Auth.login($scope.user).then(function(){
	      $state.go('home');
	    });
	  };

	  $scope.register = function() {
	    Auth.register($scope.user).then(function(){
	      $state.go('home');
	    });
	  };
}]);