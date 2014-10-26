@spencer.controller 'ExpensesCtrl', ['$scope', 'Expense'
  ($scope, Expense) ->
    fetch = (query = '') ->
      $scope.expenses = Expense.query()

    $scope.$watch 'query', _.debounce(fetch, 200)
]
