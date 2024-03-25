require("dotenv").config();
const PORT = process.env.PORT || 4321;
const express = require("express");
const dataRouters = require("./routes/datas.js");
const { requestApi } = require("./middleware/logs.js");
const upload = require("./middleware/multer.js");
const app = express();

app.use(requestApi);
app.use(express.json());
app.use("/images", express.static("public/images"));

app.use("/data", dataRouters);
app.post("/upload", upload.single("photo"), (req, res) => {
  res.json({
    message: "Upload berhasil",
  });
});

app.use((err, req, res, next) => {
  res.json({
    message: err.message,
  });
});
app.listen(PORT, () => {
  console.log(`Server berjalan di : ${PORT}`);
});
