@spencer.controller 'ExpenseCtrl', ['$scope', '$http', '$routeParams',
  ($scope, $http, $routeParams) ->
    $http.get("/api/v1/expenses/#{$routeParams.id}").success (data) ->
      console.log data
      $scope.expense = data["expense"]
]
