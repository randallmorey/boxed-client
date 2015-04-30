/* global require, module */

var EmberApp = require('ember-cli/lib/broccoli/ember-app');

var app = new EmberApp();

// Use `app.import` to add additional libraries to the generated
// output files.
//
// If you need to use different assets in different
// environments, specify an object as the first parameter. That
// object's keys should be the environment name and the values
// should be the asset to use in that environment.
//
// If the library that you are including contains AMD or ES6
// modules that you would like to import into your application
// please specify an object with the list of modules as keys
// along with the exports of each module as its value.

// Enable support for top-level Bootstrap import via @import("bootstrap")
app.options.compassOptions = {};
app.options.compassOptions.importPath = ['./', 'bower_components/bootstrap-sass-official/assets/stylesheets'];

// Bootstrap JS
app.import('bower_components/bootstrap-sass-official/assets/javascripts/bootstrap.js');
// i18next
app.import('bower_components/i18next/i18next.js');
// moment
app.import('bower_components/moment/moment.js');
app.import('bower_components/moment/locale/pt-br.js');
// jsqrcode
app.import('bower_components/jsqrcode/src/grid.js');
app.import('bower_components/jsqrcode/src/version.js');
app.import('bower_components/jsqrcode/src/detector.js');
app.import('bower_components/jsqrcode/src/formatinf.js');
app.import('bower_components/jsqrcode/src/errorlevel.js');
app.import('bower_components/jsqrcode/src/bitmat.js');
app.import('bower_components/jsqrcode/src/datablock.js');
app.import('bower_components/jsqrcode/src/bmparser.js');
app.import('bower_components/jsqrcode/src/datamask.js');
app.import('bower_components/jsqrcode/src/rsdecoder.js');
app.import('bower_components/jsqrcode/src/gf256poly.js');
app.import('bower_components/jsqrcode/src/gf256.js');
app.import('bower_components/jsqrcode/src/decoder.js');
app.import('bower_components/jsqrcode/src/qrcode.js');
app.import('bower_components/jsqrcode/src/findpat.js');
app.import('bower_components/jsqrcode/src/alignpat.js');
app.import('bower_components/jsqrcode/src/databr.js');

module.exports = app.toTree();
