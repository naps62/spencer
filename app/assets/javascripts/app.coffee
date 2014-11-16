@spencer = angular.module 'spencer', [
  'templates'
  'ui.router'
  'ngResource'
  'spencer.expenses'
]


@spencer.config [ '$stateProvider', '$urlRouterProvider', ($stateProvider, $urlRouterProvider) ->

  $urlRouterProvider.otherwise '/expenses'

  $stateProvider
    .state('expenses'
      url: '/expenses'
      templateUrl: 'expenses/index.html'
      controller: 'ExpensesCtrl'
      controllerAs: 'ctrl'
    )
    .state('expense'
      url: '/expenses/:id'
      templateUrl: 'expenses/show.html'
      controller: 'ExpenseCtrl'
      controllerAs: 'ctrl'
    )
]
