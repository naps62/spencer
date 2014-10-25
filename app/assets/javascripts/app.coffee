@spencer = angular.module 'spencer', [
  'templates'
  'ngRoute'
  'ngResource'
]

@spencer.config [ '$routeProvider', ($routeProvider) ->
  $routeProvider
    .when('/expenses'
      templateUrl: 'expenses/index.html'
      controller: 'ExpensesCtrl'
    )
    .when('/expenses/:id'
      templateUrl: 'expenses/show.html'
      controller: 'ExpenseCtrl'
    )
    .otherwise(
      redirectTo: '/expenses'
    )
]
