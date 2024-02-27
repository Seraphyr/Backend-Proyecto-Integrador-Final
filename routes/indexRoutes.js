const express = require('express');
const route = express.Router()

const usuariosRoutes = require("./usuariosRoutes")
const artistasRoutes = require("./artistasRoutes")
const playlistRoutes = require("./playlistRoutes")

route.use(usuariosRoutes)
route.use(artistasRoutes)
route.use(playlistRoutes)


module.exports = route
