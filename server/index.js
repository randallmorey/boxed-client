// To use it create some files under `mocks/`
// e.g. `server/mocks/ember-hamsters.js`
//
// module.exports = function(app) {
//   app.get('/ember-hamsters', function(req, res) {
//     res.send('hello');
//   });
// };

module.exports = function (app) {
  var globSync = require('glob').sync;
  var mocks = globSync('./mocks/**/*.js', { cwd: __dirname }).map(require);
  var proxies = globSync('./proxies/**/*.js', { cwd: __dirname }).map(require);
  var morgan  = require('morgan'); // Log proxy requests
  var bodyParser = require('body-parser');
  
  app.use(morgan('dev'));
  app.use(bodyParser.json());

  mocks.forEach(function(route) { route(app); });
  proxies.forEach(function(route) { route(app); });
};
