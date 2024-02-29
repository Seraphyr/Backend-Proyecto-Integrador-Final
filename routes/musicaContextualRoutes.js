const express = require('express');
const route = express.Router();

const musicaContextualControllers = require("../controllers/musicaContextualControllers")

route.get("/verActividad", musicaContextualControllers.verActividad)

route.get("/verEstadoAnimo", musicaContextualControllers.verEstadoAnimo)

route.get("/verClima", musicaContextualControllers.verClima)

route.get("/verGenero", musicaContextualControllers.verGenero)

module.exports = route;