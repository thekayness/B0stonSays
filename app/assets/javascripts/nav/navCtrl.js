//controller for navigation that handles registering/logins/outs using angular-devise

angular.module('dontPuke')
.controller('NavCtrl', [
'$scope',
'Auth',
'$http',
//inject Auth service provided by angular-devise
//as well as $http to intercept 401 not authorized
function($scope, Auth, $http){
	//expose methods for authentication/signout to $scope
	$scope.signedIn = Auth.isAuthenticated;
  	$scope.logout = Auth.logout;

  	//Auth.currentUser() returns a promise that is resolved into currentUser:
  	//1. if there's a current user returned by Auth, we set it to $scope.user
  	//2. if a user is not authenticated, but the server has a previous session, 
  	//Auth broadcasts a devise:new-session event with current user as arg
  	//3. if server nor Auth has authenticated session, rejected promise is returned
  	//WHICH I GUESS MAYBE I SHOULD HANDLE?
  	Auth.currentUser().then(function (user){
    	$scope.user = user;
  	});


  	//event listeners for registration/sign in/out events broadcast by Auth
	$scope.$on('devise:new-registration', function (e, user){
	  $scope.user = user;
	});

	$scope.$on('devise:login', function (e, user){
	  $scope.user = user;
	});

	$scope.$on('devise:logout', function (e, user){
	  $scope.user = {};
	});

}]);

// angular-devise HTTP methods/paths for reference?

// Method			HTTP Method		HTTP Path
// login			POST			/users/sign_in.json
// logout			DELETE			/users/sign_out.json
// register			POST			/users.json
// sendReset...		-				-
//...Password... 	-				-
//...Instructions	POST			/users/password.json
// resetPassword	POST			/users/password.json
