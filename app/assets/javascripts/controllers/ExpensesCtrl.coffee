@spencer.controller 'ExpensesCtrl', ['$scope', 'Expense'
  ($scope, Expense) ->
    fetch = (query = '') ->
      $scope.expenses = Expense.query()
      console.log $scope.expenses
      # $http.get("/api/v1/expenses?query=#{query}").success (data) ->
      #   console.log data
      #   $scope.expenses = data["expenses"]

    $scope.$watch 'query', _.debounce(fetch, 200)
]
