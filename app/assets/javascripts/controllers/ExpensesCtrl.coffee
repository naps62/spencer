class ExpensesCtrl
  constructor: ($scope, $http) ->
    $http.get('/api/v1/expenses.json').success (data) ->
      console.log data
      $scope.expenses = data["expenses"]

ExpensesCtrl.$inject = ['$scope', '$http']
@spencer.controller 'ExpensesCtrl', ExpensesCtrl
