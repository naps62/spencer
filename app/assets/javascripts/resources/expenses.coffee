@expenses = angular.module 'spencer.expenses', ['ngResource']


@expenses.factory 'Expense', ['$resource',
  ($resource) ->
    $resource '/api/v1/expenses/:id'
]

@expenses.controller 'ExpensesCtrl', ['$scope', 'Expense'
  ($scope, Expense) ->
    @fetch = (query = '') ->
      Expense.query query: query, (data) ->
        debugger
        $scope.expenses = data

    $scope.$watch 'query', @fetch

    $scope.newExpense = new Expense()
    @addExpense = =>
      $scope.newExpense.description = 'test'
      $scope.newExpense.$save =>
        @fetch()
    @
]


@expenses.controller 'ExpenseCtrl', ['$scope', 'Expense', '$routeParams',
  ($scope, Expense, $routeParams) ->
    $scope.expense = Expense.get id: $routeParams.id
]
