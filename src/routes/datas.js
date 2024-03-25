const express = require("express");
const router = express.Router();
const {
  getAllDatas,
  createNewData,
  updateData,
  deleteData,
} = require("../controller/data.js");

router.post("/", createNewData);
router.get("/", getAllDatas);
router.patch("/:id", updateData);
router.delete("/:id", deleteData);

module.exports = router;
