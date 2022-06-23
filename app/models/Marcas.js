const db = require("../services/db");
const helper = require("../helper");

const marcas = {
  getMarcas: async () => {
    const result = await db.query(
      `
      SELECT ma.id, ma.name_marca
        FROM marcas AS ma
      `
    );
    const data = helper.emptyOrRows(result);

    return {
      data,
    };
  },
};

module.exports = marcas;
