var app = angular.module('myAppS', []);
app.controller("myCtrlS", function($scope, $http) {
	
	$http.get("sdata")
	.then(function(response) {
    	 $scope.SData = response.sdata;
    	 
    	});
});


