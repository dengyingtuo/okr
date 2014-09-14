App.Router.map ->
  @resource 'users', path: '/', ->
    @resource 'user', path: '/users/:id'

App.Router.reopen
  location: 'auto'
  rootURL: '/'