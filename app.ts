/// <reference path='./typings/main.d.ts' />

import * as express from "express";
import routes = require("./routes");

var app = express();

app.use('/', routes);


// catch the remaining routes as errors
app.use((req, res, next) => {
  var error = new Error('Not found');
  error['status'] = 404;
  next(error);
});


export = app;
