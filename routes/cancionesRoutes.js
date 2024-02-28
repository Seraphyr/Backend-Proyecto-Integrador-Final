
const express = require('express');
const route = express.Router();

const cancionesControllers = require("../controllers/cancionesControllers")

route.get("/verCanciones", cancionesControllers.verCanciones)

module.exports = route;

