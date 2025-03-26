const db = require("./db");
const helper = require("../helper");
const config = require("../config");

async function getMultiple(page = 1) {
  const offset = helper.getOffset(page, config.listPerPage);
  const rows = await db.query(
    `SELECT * FROM programming_languages WHERE id = 1` 
    /* LIMIT ${offset},${config.listPerPage} */
  );/* este limit es para que en el get no muestre mas de dies variables */
  const data = helper.emptyOrRows(rows);
  const meta = { page };

  return {
    data,
    meta,
  };
}

async function create(programmingLanguage) {
  const result = await db.query(
    `INSERT INTO programming_languages 
    (id,nombre,Email,profecion,resumen,puntaje,cant_reseñas,portafolio ) 
    VALUES 
    ("${programmingLanguage.nombre}", ${programmingLanguage.Email}, ${programmingLanguage.profecion}, ${programmingLanguage.resumen},
     ${programmingLanguage.puntaje}, ${programmingLanguage.cant_reseñas}, ${programmingLanguage.portafolio})`
  );

  let message = "Error in creating programming language";

  if (result.affectedRows) {
    message = "Programming language created successfully";
  }

  return { message };
}

async function update(id, programmingLanguage) {
  const result = await db.query(
    `UPDATE programming_languages 
    SET nombre="${programmingLanguage.nombre}", Email=${programmingLanguage.Email}, profecion=${programmingLanguage.profecion}, 
    resumen=${programmingLanguage.resumen}, puntaje=${programmingLanguage.puntaje}, cant_reseñas=${programmingLanguage.cant_reseñas}, portafolio=${programmingLanguage.portafolio},
    WHERE id=${id}`
  );

  let message = "Error in updating programming language";

  if (result.affectedRows) {
    message = "Programming language updated successfully";
  }

  return { message };
}

async function remove(id) {
  const result = await db.query(
    `DELETE FROM programming_languages WHERE id=${id}`
  );

  let message = "Error in deleting programming language";

  if (result.affectedRows) {
    message = "Programming language deleted successfully";
  }

  return { message };
}

module.exports = {
  getMultiple,
  create,
  update,
  remove,
};
