const modelo = require("../models/Modelos");

const getModelos = (id_marca) => {
  return modelo.getModelsPerMarcas(id_marca);
};

module.exports = {
  getModelos,
};
