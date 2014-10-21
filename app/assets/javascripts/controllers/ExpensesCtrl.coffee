window.expenses = [
  {
    id: 1
    name: 'Baked Potato w/ Cheese'
  }
  {
    id: 2
    name: 'Garlic Mashed Potatoes'
  }
  {
    id: 3
    name: 'Potatoes Au Gratin'
  }
  {
    id: 4
    name: 'Baked Brussel Sprouts'
  }
]

@spencer.controller 'ExpensesCtrl', ['$scope', '$routeParams', '$location',
  ($scope, $routeParams, $location) ->
    $scope.search = (keywords) ->
      $location.path('/').search('keywords', keywords)

    $scope.expenses =
      if $routeParams.keywords
        keywords = $routeParams.keywords.toLowerCase()
        window.expenses.filter (expense) -> expense.name.toLowerCase().indexOf(keywords) != -1
      else
        []
]
