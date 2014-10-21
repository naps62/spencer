
@spencer.config [ '$routeProvider', ($routeProvider) ->
  $routeProvider
    .when('/',
      templateUrl: 'index.html'
      controller: 'RootController'
    )
    .when('/expenses/new',
      templateUrl: 'new.html',
      controller: 'ExpensesController'
    )
]
