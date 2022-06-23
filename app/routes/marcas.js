var express = require("express");
var router = express.Router();
var marcas = require("../controllers/Marcas");


// usage: http://localhost:3000/marcas
router.get("/", async function (req, res, next) {
  try {
    res.json(await marcas.getMarcas());
  } catch (error) {
    console.log("Error mientras se realizaba la busqueda", error.message);
    next(error);
  }
});


module.exports = router;
