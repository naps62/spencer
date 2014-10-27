@expenses = angular.module 'spencer.expenses', ['ngResource']

@expenses.factory 'Expense', ['$resource',
  ($resource) ->
    $resource '/api/v1/expenses/:id'
]

@expenses.controller 'ExpensesCtrl', ['$scope', 'Expense'
  ($scope, Expense) ->
    fetch = (query = '') ->
      Expense.query query: query, (data) ->
        $scope.expenses = data

    $scope.$watch 'query', fetch

    $scope.newExpense = new Expense()

    $scope.addExpense = ->
      $scope.newExpense.$save ->
        fetch()
        console.log 'success'
]

@expenses.controller 'ExpenseCtrl', ['$scope', 'Expense', '$routeParams',
  ($scope, Expense, $routeParams) ->
    $scope.expense = Expense.get id: $routeParams.id
]
