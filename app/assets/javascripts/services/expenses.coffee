@expenses = angular.module 'expensesService', ['ngResource']

@expenses.factory 'Expense', ['$resource',
  ($resource) ->
    $resource '/api/v1/expenses/:id'
]
