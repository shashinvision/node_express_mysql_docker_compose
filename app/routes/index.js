var express = require('express');
var router = express.Router();
const modelosRouter = require('./modelos');
const marcasRouter = require('./marcas');


/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});


router.use('/modelos', modelosRouter);
router.use('/marcas', marcasRouter);

module.exports = router;
