const requestApi = (req, res, next) => {
  console.log("Hit : ", req.path);
  next();
};
module.exports = {
  requestApi,
};
