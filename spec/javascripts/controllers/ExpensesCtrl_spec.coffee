describe "ExpensesCtrl", ->
  scope      = null
  ctrl       = null
  location   = null
  routeParam = null
  resource   = null

  setupController  = (keywords) ->
    inject(($location, $routeParams, $rootScope, $resource, $controller) ->
      scope       = $rootScope.$new()
      location    = $location
      resource    = $resource
      routeParams = $routeParams
      routeParams.keywords = keywords

      ctrl = $controller "ExpensesCtrl", $scope: scope, $location: location
    )

  beforeEach module("spencer")
  beforeEach setupController()

  it "defaults to no expenses", ->
    expect(scope.expenses).toEqualData []
