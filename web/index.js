var app = require('express')(),
    winston = require('winston'),
    serveStatic = require('serve-static')

/*
* Get winston to log uncaught exceptions and to not exit
*/
var logger = new winston.Logger({
  transports: [
    new winston.transports.Console({
      handleExceptions: true
    })
  ],
  exitOnError: false
});

app.use(serveStatic('public', {'index' : ['index.html']}));

var PORT = process.env.PORT || 80;
app.listen(PORT);
logger.log('info', 'Running resource service on http://localhost:' + PORT);

