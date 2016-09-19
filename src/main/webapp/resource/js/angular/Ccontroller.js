var app = angular.module('myApp', []);
app.controller("myCtrl", function($scope, $http) {

	$http.get("data")
	
	 $scope.sortType     = 'name'; // set the default sort type
	$scope.sortType     = 'description';
	$scope.sortType     = 'category';
	$scope.sortType     = 'quantity';
	$scope.sortType     = 'price';
	$scope.sortReverse  = false;  // set the default sort order
  $scope.searchFish   = '';     // set the default search/filter term
  
    then(function(response) {
    	 $scope.Data = response.data;
    	 alert{reponse.data};
    });
	
});


