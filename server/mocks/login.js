module.exports = function(app) {
  var express = require('express');
  var loginRouter = express.Router();

  loginRouter.post('/', function(req, res) {
    res.status(200).send({
      "id": "mnIdqcpGAZKwyyj8GkcHFa2VrGNnCBX8GAbmHfWzaXRCHCgTNmknHwFCQdYD7awR",
      "ttl": 1209600,
      "created": "2015-04-28T23:36:16.894Z",
      "userId": "553d32b2868cedf11ef63508"
    });
  });

  app.use('/api/users/login', loginRouter);
};
