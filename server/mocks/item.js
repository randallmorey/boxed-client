module.exports = function(app) {
  var express = require('express');
  var itemRouter = express.Router();
  var records = [
    {
      "name": "Drinking glasses",
      "quantity": 8,
      "id": "1",
      "boxId": "553d3157054c39b61eead998"
    },
    {
      "name": "Wine glasses",
      "quantity": 8,
      "id": "2",
      "boxId": "553d3157054c39b61eead998"
    },
    {
      "name": "Beer glasses",
      "quantity": 15,
      "id": "3",
      "boxId": "553d3157054c39b61eead998"
    },
    {
      "name": "Peanut butter",
      "quantity": 1,
      "id": "4",
      "boxId": "553dacf575b9191e2c29597d"
    },
    {
      "name": "Soy sauce",
      "quantity": 1,
      "id": "5",
      "boxId": "553dacf575b9191e2c29597d"
    },
    {
      "name": "Toothbrush",
      "quantity": 2,
      "id": "6",
      "boxId": "553dacdd75b9191e2c29597c"
    },
    {
      "name": "Roomba",
      "quantity": 1,
      "id": "7"
    }
  ];

  itemRouter.get('/', function(req, res) {
    res.send(records);
  });

  itemRouter.post('/', function(req, res) {
    var body = req.body;
    var id = Math.round(Math.random() * 100000) + 100000;
    body.id = id;
    res.status(201).send(body).end();
  });

  itemRouter.get('/:id', function(req, res) {
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

  itemRouter.put('/:id', function(req, res) {
    var body = req.body;
    body.id = req.params.id;
    res.send(body);
  });

  itemRouter.delete('/:id', function(req, res) {
    res.status(204).end();
  });

  app.use('/api/items', itemRouter);
};
