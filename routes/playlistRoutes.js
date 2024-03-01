const express = require('express');
const route = express.Router();

const playlistControllers = require("../controllers/playlistControllers")
const verificarToken = require("../middlewares/authUser")

route.post("/crearCupidoMusical", verificarToken.verificarToken, playlistControllers.crearCupidoMusical)
route.post("/crearMusicaContextual", verificarToken.verificarToken, playlistControllers.crearMusicaContextual)


module.exports = route; 