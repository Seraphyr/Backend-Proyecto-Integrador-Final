const express = require('express');
const route = express.Router()

const usuariosRoutes = require("./usuariosRoutes")
const artistasRoutes = require("./artistasRoutes")
const playlistRoutes = require("./playlistRoutes")
const cancionesRoutes = require("./cancionesRoutes")

route.use(usuariosRoutes)
route.use(artistasRoutes)
route.use(playlistRoutes)
route.use(cancionesRoutes)

module.exports = route
