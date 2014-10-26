@spencer.controller 'ExpensesCtrl', ['$scope', '$http'
  ($scope, $http) ->
    fetch = (query = '') ->
      $http.get("/api/v1/expenses?query=#{query}").success (data) ->
        console.log data
        $scope.expenses = data["expenses"]

    $scope.$watch 'query', _.debounce(fetch, 200)
]
