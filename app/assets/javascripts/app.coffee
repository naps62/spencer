@spencer = angular.module 'spencer', [
  'templates'
  'ngRoute'
]

@spencer.config [ '$routeProvider', ($routeProvider) ->
  $routeProvider
    .when('/'
      templateUrl: 'index.html'
      controller: 'ExpensesCtrl'
    )
]
