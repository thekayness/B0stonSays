angular.module('dontPuke')
	.factory('posts', ['$http', function() {
		var postsObj = {
			posts: []
		};
		return postsObj;
	}]);