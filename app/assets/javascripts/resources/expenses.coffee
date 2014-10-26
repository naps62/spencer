@expenses = angular.module 'spencer.expenses', ['ngResource']

@expenses.factory 'Expense', ['$resource',
  ($resource) ->
    $resource '/api/v1/expenses/:id'
]

@expenses.controller 'ExpensesCtrl', ['$scope', 'Expense'
  ($scope, Expense) ->
    fetch = (query = '') ->
      $scope.expenses = Expense.query()

    $scope.$watch 'query', _.debounce(fetch, 200)
]

@expenses.controller 'ExpenseCtrl', ['$scope', 'Expense', '$routeParams',
  ($scope, Expense, $routeParams) ->
    $scope.expense = Expense.get id: $routeParams.id
]
