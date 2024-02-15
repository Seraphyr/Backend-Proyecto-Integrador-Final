const express = require('express');
const route = express.Router()

const usuariosRoutes = require("./usuariosRoutes")
route.use(usuariosRoutes)

module.exports = route
