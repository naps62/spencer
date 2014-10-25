@spencer = angular.module 'spencer', [
  'templates'
  'ngRoute'
  'ngResource'
]

@spencer.config [ '$routeProvider', ($routeProvider) ->
  $routeProvider
    .when('/expenses'
      templateUrl: 'index.html'
      controller: 'ExpensesCtrl'
    )
    .otherwise(
      redirectTo: '/expenses'
    )
]
