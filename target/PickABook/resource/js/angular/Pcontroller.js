var app = angular.module('myApp', []);
app.controller("myCtrl", function($scope, $http) {

	$http.get("data")
    .then(function(response) {
    	
    	 $scope.Data = response.data;
    	
    });
});


/*var app = angular.module('myApp', []);
app.controller("myCtrl", function($scope, $http) {

	$http.get("data")
  $scope.sortType     = 'name'; // set the default sort type
  $scope.sortReverse  = false;  // set the default sort order
  $scope.searchProduct   = '';     // set the default search/filter term
  
	
    then(function(response) {
    	
    	 $scope.Data = response.data;
    	
    });
});*/