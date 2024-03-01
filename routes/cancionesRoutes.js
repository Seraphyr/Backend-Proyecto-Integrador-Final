
const express = require('express');
const route = express.Router();

const cancionesControllers = require("../controllers/cancionesControllers")

const verificarToken = require("../middlewares/authUser")

route.get("/verCanciones", verificarToken.verificarToken, cancionesControllers.verCanciones)

module.exports = route;

