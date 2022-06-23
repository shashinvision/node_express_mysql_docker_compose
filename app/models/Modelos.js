const db = require("../services/db");
const helper = require("../helper");

const model = {
  getModelsPerMarcas: async (id_marca) => {
    const result = await db.query(
      `
      SELECT mo.id, mo.name_modelo, ma.name_marca
        FROM modelo AS mo
          LEFT JOIN marcas AS ma
          ON mo.id_marca = ma.id
          WHERE ma.id = ?
      `,
      [id_marca]
    );
    const data = helper.emptyOrRows(result);

    return {
      data,
    };
  },
};

module.exports = model;
