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
      url: process.env.API_URL || 'http://localhost:4200/api',
      authentication: {
        url: process.env.API_AUTH_URL || 'http://localhost:4200/api/users/login',
      }
    },
    'simple-auth': {
      authorizer: 'authorizer:boxed',
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
    ENV.api.url = 'http://0.0.0.0:3000/api';
    ENV.api.authentication.url = 'http://0.0.0.0:3000/api/users/login';
    ENV.api.url = 'https://boxed.herokuapp.com:443/api';
    ENV.api.authentication.url = 'https://boxed.herokuapp.com:443/api/users/login';
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
  
  ENV['simple-auth'].crossOriginWhitelist = [ENV.api.url]
  
  return ENV;
};
