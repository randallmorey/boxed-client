module.exports = function(app) {
  var express = require('express');
  var boxRouter = express.Router();
  var records = [
    {
      "name": "Kitchen",
      "id": "553d3157054c39b61eead998"
    },
    {
      "name": "Kitchen Pantry",
      "description": "Food items for pantry",
      "id": "553dacf575b9191e2c29597d"
    },
    {
      "name": "Bathroom",
      "id": "553dacdd75b9191e2c29597c"
    }
  ];

  boxRouter.get('/', function(req, res) {
    res.send(records);
  });

  boxRouter.post('/', function(req, res) {
    res.status(201).end();
  });

  boxRouter.get('/:id', function(req, res) {
    var id = req.params.id;
    var record = null;
    var filtered = records.filter(function (filterRecord) {
      return filterRecord.id == id;
    });
    if (filtered.length) {
      record = filtered[0];
    }
    res.send(record);
  });

  boxRouter.put('/:id', function(req, res) {
    res.send(req.body);
  });

  boxRouter.delete('/:id', function(req, res) {
    res.status(204).end();
  });

  app.use('/api/box', boxRouter);
};
