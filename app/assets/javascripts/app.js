(function() { 'use strict'; }());

var spencer = angular.module('spencer', [
  'templates',
  'ui.router',
  'ngResource',
  'spencer.expenses'
]);

spencer.config(['$stateProvider', '$locationProvider', '$urlRouterProvider', function($stateProvider, $locationProvider, $urlRouterProvider) {

  $urlRouterProvider.otherwise('/expenses');

  $stateProvider
    .state('expenses', {
      url: '/expenses',
      templateUrl: 'expenses/index.html',
      controller: 'ExpensesCtrl',
      controllerAs: 'ctrl'
    })
    .state('expense', {
      url: '/expenses/:id',
      templateUrl: 'expenses/show.html',
      controller: 'ExpenseCtrl',
      controllerAs: 'ctrl'
    });
}]);
