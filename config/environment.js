/* jshint node: true */

module.exports = function(environment) {
  var ENV = {
    modulePrefix: 'boxed-client',
    environment: environment,
    baseURL: '/',
    locationType: 'auto',
    EmberENV: {
      FEATURES: {
        // Here you can enable experimental features on an ember canary build
        // e.g. 'with-controller': true
      }
    },

    APP: {
      // Here you can pass flags/options to your application instance
      // when it is created
    },
    
    api: {
      url: 'http://localhost:4200/api',
      authentication: {
        url: 'http://localhost:4200/api/users/login',
      }
    },
    'simple-auth': {
      //authorizer: 'authorizer:boxed',
      routeAfterAuthentication: 'boxes',
      routeIfAlreadyAuthenticated: 'boxes',
      routeAfterInvalidation: 'login'
    },
    contentSecurityPolicy: {
      'default-src': "'self'",
      'script-src': "'self'",
      'font-src': "'self' *",
      'connect-src': "'self' localhost:35729",
      'img-src': "'self' *",
      'style-src': "'self' 'unsafe-inline'"
    }
  };

  if (environment === 'development') {
    // ENV.APP.LOG_RESOLVER = true;
    // ENV.APP.LOG_ACTIVE_GENERATION = true;
    // ENV.APP.LOG_TRANSITIONS = true;
    // ENV.APP.LOG_TRANSITIONS_INTERNAL = true;
    // ENV.APP.LOG_VIEW_LOOKUPS = true;
  }

  if (environment === 'test') {
    // Testem prefers this...
    ENV.baseURL = '/';
    ENV.locationType = 'none';

    // keep test console output quieter
    ENV.APP.LOG_ACTIVE_GENERATION = false;
    ENV.APP.LOG_VIEW_LOOKUPS = false;

    ENV.APP.rootElement = '#ember-testing';
  }

  if (environment === 'production') {

  }

  return ENV;
};
