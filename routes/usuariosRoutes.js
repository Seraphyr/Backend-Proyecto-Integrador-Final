const express = require('express');
const route = express.Router();

const usuariosControllers = require("../controllers/usuariosControllers")

route.get('/saludo', usuariosControllers.saludo)

module.exports = route;