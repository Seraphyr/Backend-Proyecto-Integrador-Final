const express = require('express');
const route = express.Router();

const playlistControllers = require("../controllers/playlistControllers")
const verificarToken = require("../middlewares/authUser")

route.post("/crearCupidoMusical", verificarToken.verificarToken, playlistControllers.crearCupidoMusical)
route.post("/crearMusicaContextual", verificarToken.verificarToken, playlistControllers.crearMusicaContextual)
route.get("/verPlaylistUsuario", verificarToken.verificarToken, playlistControllers.verPlaylistUsuario)
route.post("/verDuracionPlaylist", verificarToken.verificarToken, playlistControllers.verDuracionPlaylist)

module.exports = route; 