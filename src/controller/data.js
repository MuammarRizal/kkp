const DatasModel = require("../models/data");
const getAllDatas = async (req, res, next) => {
  try {
    const [data] = await DatasModel.getAllDatas();
    res.json({
      message: "GET DATA berhasil",
      data: data,
    });
  } catch (error) {
    res.status(500).json({
      message: "Server error",
      serverMessage: error,
    });
  }
};

const createNewData = async (req, res) => {
  const { body } = req;
  console.log(body);
  if (!body.namaLatin && !body.gejala && !body.toksisitas && body.deskripsi) {
    return res.status(400).json({
      message: "Tolong isi semua field",
      data: body,
    });
  }
  try {
    await DatasModel.createNewData(body);
    res.status(201).json({
      message: "CREATE new Data Success",
      data: body,
    });
  } catch (err) {
    res.status(500).json({
      message: "Server error",
      serverMessage: err,
    });
  }
};

const updateData = async (req, res) => {
  const { id } = req.params;
  const { body } = req;
  try {
    await DatasModel.updateData(body, id);
    res.json({
      message: "UPDATE Data berhasil",
      data: {
        id: id,
        ...body,
      },
    });
  } catch (err) {
    res.status(500).json({
      message: "Server error",
      serverMessage: err,
    });
  }
};

const deleteData = async (req, res) => {
  const { id } = req.params;

  try {
    await DatasModel.deleteData(id);
    res.json({
      nessage: "DELETE Data Success",
      data: {
        id: req.params.id,
      },
    });
  } catch (err) {
    res.status(500).json({
      message: "Server error",
      serverMessage: err,
    });
  }
};

module.exports = {
  getAllDatas,
  createNewData,
  updateData,
  deleteData,
};
