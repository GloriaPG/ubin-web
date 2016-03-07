angular.module 'ubinWeb'
  .config ($stateProvider, $urlRouterProvider) ->
    'ngInject'
    $stateProvider
      .state 'home',
        url: '/'
        templateUrl: 'app/main/main.html'
        controller: 'MainController'
        controllerAs: 'main'
      .state 'search',
        url: '/search'
        templateUrl: 'app/search/search.html'
        controller: 'SearchController'
        controllerAs: 'search'
      .state 'post',
        url: '/post'
        templateUrl: 'app/post/post.html'
        controller: 'PostController'
        controllerAs: 'post'
      .state 'post.create',
        url: '/create'
        templateUrl: 'app/post/create.html'
      .state 'posts',
        url: '/posts'
        templateUrl: 'app/post/post.html'
        controller: 'PostsController'
        controllerAs: 'post'
      .state 'favs',
        url: '/favs'
        templateUrl: 'app/post/post.html'
        controller: 'FavsController'
        controllerAs: 'post'
      .state 'single',
        url: '/single/:id'
        templateUrl: 'app/single-post/single.html'
        controller: 'SingleController'
        controllerAs: 'single'
      .state 'login',
        url: '/login'
        templateUrl: 'app/login/login.html'
        controller: 'LoginController'
        controllerAs: 'login'

    $urlRouterProvider.otherwise '/'
