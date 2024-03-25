const dbPool = require("../config/database");
const getAllDatas = () => {
  const SQLQuery = "SELECT * FROM mushroom";

  return dbPool.execute(SQLQuery);
};

const createNewData = (body) => {
  const SQLQuery = `INSERT INTO mushroom (namaLatin,deskripsi,toksisitas,gejala) 
                    VALUES ('${body.namaLatin}','${body.deskripsi}','${body.toksisitas}','${body.gejala}')`;

  return dbPool.execute(SQLQuery);
};

const updateData = (body, id) => {
  const SQLQuery = `UPDATE mushroom 
                    SET namaLatin="${body.namaLatin}",deskripsi="${body.deskripsi}",toksisitas="${body.toksisitas}",gejala="${body.gejala}" 
                    WHERE id=${id}`;

  return dbPool.execute(SQLQuery);
};

const deleteData = (id) => {
  const SQLQuery = `DELETE FROM mushroom
                    WHERE id=${id}`;
  return dbPool.execute(SQLQuery);
};
module.exports = { getAllDatas, createNewData, updateData, deleteData };
