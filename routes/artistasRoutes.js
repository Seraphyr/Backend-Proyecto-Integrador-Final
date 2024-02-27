const express = require('express');
const route = express.Router();

const artistasControllers = require("../controllers/artistasControllers")

route.get("/verArtistas", artistasControllers.verArtistas)

module.exports = route;