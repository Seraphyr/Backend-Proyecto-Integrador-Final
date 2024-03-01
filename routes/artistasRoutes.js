const express = require('express');
const route = express.Router();

const artistasControllers = require("../controllers/artistasControllers")

const verificarToken = require("../middlewares/authUser")

route.get("/verArtistas",/* verificarToken.verificarToken  ,*/artistasControllers.verArtistas)
route.get("/artistasRandom", verificarToken.verificarToken, artistasControllers.artistasRandom)

module.exports = route;