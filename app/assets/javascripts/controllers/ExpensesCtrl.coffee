window.expenses = [
  {
    id: 1
    description: 'Baked Potato w/ Cheese'
  }
  {
    id: 2
    description: 'Garlic Mashed Potatoes'
  }
  {
    id: 3
    description: 'Potatoes Au Gratin'
  }
  {
    id: 4
    description: 'Baked Brussel Sprouts'
  }
]

@spencer.controller 'ExpensesCtrl', ['$scope', '$routeParams', '$location',
  ($scope, $routeParams, $location) ->
    $scope.search = (keywords) ->
      $location.path('/').search('keywords', keywords)

    $scope.expenses =
      if $routeParams.keywords
        keywords = $routeParams.keywords.toLowerCase()
        window.expenses.filter (expense) -> expense.description.toLowerCase().indexOf(keywords) != -1
      else
        []
]
