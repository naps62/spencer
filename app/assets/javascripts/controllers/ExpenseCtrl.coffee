@spencer.controller 'ExpenseCtrl', ['$scope', 'Expense', '$routeParams',
  ($scope, Expense, $routeParams) ->
    $scope.expense = Expense.get id: $routeParams.id

    # $http.get("/api/v1/expenses/#{$routeParams.id}").success (data) ->
    #   console.log data
    #   $scope.expense = data["expense"]
]
