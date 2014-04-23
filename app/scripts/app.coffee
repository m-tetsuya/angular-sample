'use strict'

angular
  .module('angularSampleApp', [
    'ngCookies',
    'ngResource',
    'ngSanitize',
    'ngRoute'
  ])
  .config [
    "$routeProvider",($routeProvider) ->
      $routeProvider
        .when '/phones',
          templateUrl: 'views/phone-list.html'
          controller: 'PhoneListCtrl'
        .when '/phones/:phoneId',
          templateUrl: 'views/phone-detail.html'
          controller: 'PhoneDetailCtrl'
        .when '/',
          templateUrl: 'views/main.html'
          controller: 'MainCtrl'
        .when '/second',
          templateUrl: 'views/second.html'
          controller: 'SecondCtrl'
        .otherwise
          redirectTo: '/'
  ]

