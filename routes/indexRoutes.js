const express = require('express');
const route = express.Router()

const usuariosRoutes = require("./usuariosRoutes")
const artistasRoutes = require("./artistasRoutes")
const playlistRoutes = require("./playlistRoutes")

const cancionesRoutes = require("./cancionesRoutes")

const musicaContextualRoutes = require("./musicaContextualRoutes")


route.use(usuariosRoutes)
route.use(artistasRoutes)
route.use(playlistRoutes)

route.use(cancionesRoutes)

route.use(musicaContextualRoutes)



module.exports = route
