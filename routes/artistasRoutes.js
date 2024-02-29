const express = require('express');
const route = express.Router();

const artistasControllers = require("../controllers/artistasControllers")

route.get("/verArtistas", artistasControllers.verArtistas)
route.get("/artistasRandom", artistasControllers.artistasRandom)

module.exports = route;