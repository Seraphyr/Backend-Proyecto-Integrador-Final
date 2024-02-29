const express = require('express');
const route = express.Router();

const playlistControllers = require("../controllers/playlistControllers")

route.post("/crearCupidoMusical", playlistControllers.crearCupidoMusical)
route.post("/crearMusicaContextual", playlistControllers.crearMusicaContextual)


module.exports = route;