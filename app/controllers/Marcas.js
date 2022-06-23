const marcas = require("../models/Marcas");

const getMarcas= () => {
  return marcas.getMarcas();
};

module.exports = {
  getMarcas,
};
