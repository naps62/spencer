(function() { 'use strict'; }());

var expenses = angular.module('spencer.expenses', [
  'ngResource'
]);

expenses.factory('Expense', ['$resource', function($resource) {
  return $resource('/api/v1/expenses/:id');
}]);

expenses.controller('ExpensesCtrl', ['$scope', 'Expense', function($scope, Expense) {

  var ctrl = this;

  $scope.fetch = function(query) {
    if (typeof query === undefined) { query = ''; }
    Expense.query({query: query}, function(data) {
      $scope.expenses = data;
    });
  };

  $scope.$watch('query', $scope.fetch);
  $scope.fetch();

  $scope.newExpense = new Expense();
  $scope.addExpense = function() {
    $scope.newExpense.$save(function() {
      ctrl.fetch();
    });
  };
}]);
