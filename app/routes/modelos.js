var express = require("express");
var router = express.Router();
var modelos = require("../controllers/Modelos");


// usage: http://localhost:3000/modelos?id=computer
router.get("/", async function (req, res, next) {
  try {
    res.json(await modelos.getModelos(req.query.id));
  } catch (error) {
    console.log("Error mientras se realizaba la busqueda", error.message);
    next(error);
  }
});


module.exports = router;
