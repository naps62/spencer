class ExpenseCtrl
  constructor: ($scope, $http, $routeParams) ->
    fetch = (query = '') ->
      $http.get("/api/v1/expenses/#{$routeParams.id}").success (data) ->
        console.log data
        $scope.expense = data["expense"]

    $scope.$watch 'query', _.debounce(fetch, 200)

ExpenseCtrl.$inject = ['$scope', '$http', '$routeParams']
@spencer.controller 'ExpenseCtrl', ExpenseCtrl
