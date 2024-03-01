const express = require('express');
const route = express.Router();

const musicaContextualControllers = require("../controllers/musicaContextualControllers")


const verificarToken = require("../middlewares/authUser")

route.get("/verActividad", verificarToken.verificarToken, musicaContextualControllers.verActividad)

route.get("/verEstadoAnimo", verificarToken.verificarToken, musicaContextualControllers.verEstadoAnimo)

route.get("/verClima", verificarToken.verificarToken, musicaContextualControllers.verClima)

route.get("/verGenero", verificarToken.verificarToken, musicaContextualControllers.verGenero)

module.exports = route;