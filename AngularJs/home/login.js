angular.module('myApp', []).controller('userCtrl', function($scope) {
$scope.fName = '';
$scope.lName = '';
$scope.passw1 = '';
$scope.passw2 = '';
$scope.users = [
{id:1, fName:'John', lName:"Smith" },
{id:2, fName:'Tiger',  lName:"Smith" }
];
$scope.edit = true;
$scope.error = false;
$scope.incomplete = false; 
$scope.hideform = true; 
$scope.editUser = function(id) {
  $scope.hideform = false;
  if (id == 'new') {
    $scope.edit = true;
    $scope.incomplete = true;
    $scope.fName = '';
    $scope.lName = '';
    } else {
    $scope.edit = false;
    $scope.fName = $scope.users[id-1].fName;
    $scope.lName = $scope.users[id-1].lName;
  }
};

$scope.$watch('passw1',function() {$scope.test();});
$scope.$watch('passw2',function() {$scope.test();});
$scope.$watch('fName', function() {$scope.test();});
$scope.$watch('lName', function() {$scope.test();});

$scope.test = function() {

  if ($scope.fName.length > 0 && $scope.passw1.length > 0) {
    $scope.error = false;
    $scope.incomplete = false;
  } else {
    $scope.error = true;
    $scope.incomplete = true;
  }

};


  $scope.login = function(id) {
    $scope.hideform = false;
    if (id == 'login') {

      if ($scope.fName == 'docu' && $scope.passw1 == 'repo') {
        var parent = window.location.href = '../';
        var path = parent+"base/base.html";
        window.location.href = path;
      } else {
        alert("Login with Username as 'docu' and Password as 'repo'");
      }


    }
  };


});