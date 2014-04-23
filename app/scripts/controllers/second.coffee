'use strict'

m = angular.module('angularSampleApp')
m.controller 'SecondCtrl', [
  "$scope","$http",($scope,$http) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma aaa'
    ]
    $http
      .get('phones/phones.json')
      .success (data) ->
        $scope.phones = data
    $scope.orderProp = 'age'
]
m.controller 'PhoneListCtrl', [
  "$scope","$http",($scope,$http) ->
    $http
      .get('phones/phones.json')
      .success (data) ->
        $scope.phones = data
    $scope.orderProp = 'age'
]
m.controller 'PhoneDetailCtrl', [
  "$scope","$routeParams",($scope,$routeParams) ->
    $scope.phoneId = $routeParams.phoneId
]
