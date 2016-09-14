var app = angular.module('myApp', []);
app.controller("myCtrlC", function($scope, $http) {

	$http.get("cdata")
    .then(function(response) {
    	 $scope.CData = response.cdata;
    	 alert{reponse.cdata};
    });
	
});


