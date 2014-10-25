class ExpensesCtrl
  constructor: ($scope, $http) ->
    fetch = (query) ->
      $http.get("/api/v1/expenses?query=#{query}").success (data) ->
        console.log data
        $scope.expenses = data["expenses"]

    fetch('')
    $scope.$watch 'query', _.debounce(fetch, 200)

ExpensesCtrl.$inject = ['$scope', '$http']
@spencer.controller 'ExpensesCtrl', ExpensesCtrl
