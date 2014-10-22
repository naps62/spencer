@spencer = angular.module 'spencer', [
  'templates'
  'ngRoute'
  'ngResource'
]

@spencer.config [ '$routeProvider', ($routeProvider) ->
  $routeProvider
    .when('/'
      templateUrl: 'index.html'
      controller: 'ExpensesCtrl'
    )
]
